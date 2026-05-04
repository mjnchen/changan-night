// Render the Chang'an Night marketplace icon — a Tang-style palace under the
// night sky — to PNG.
//
// Usage: swift scripts/render-icon.swift <out.png> [size]
//
// Re-run when palette or layout changes. macOS only (uses AppKit).
//
// Geometry mirrors vscode/icon.svg (top-left origin, 128-unit canvas). A flip
// transform lets us use SVG coordinates directly inside Cocoa's bottom-left
// graphics context.

import AppKit

let args = CommandLine.arguments
guard args.count >= 2 else {
    fputs("usage: swift render-icon.swift <out.png> [size]\n", stderr)
    exit(1)
}
let outPath = args[1]
let size = args.count >= 3 ? Int(args[2]) ?? 128 : 128

// Palette (see palette.md for canonical names)
let sky        = NSColor(red: 0x1a/255.0, green: 0x1d/255.0, blue: 0x2e/255.0, alpha: 1.0)
let goldBright = NSColor(red: 0xf4/255.0, green: 0xc8/255.0, blue: 0x60/255.0, alpha: 1.0) // 杏黄 apricot — moon, roof tiles
let goldDeep   = NSColor(red: 0xd4/255.0, green: 0xa2/255.0, blue: 0x3f/255.0, alpha: 1.0) // 鵝黄 duckling — ridge cap accent
let cinnabar   = NSColor(red: 0xc9/255.0, green: 0x3f/255.0, blue: 0x3f/255.0, alpha: 1.0) // 朱砂 — pillars
let vermilion  = NSColor(red: 0xe8/255.0, green: 0x5a/255.0, blue: 0x4a/255.0, alpha: 1.0) // 朱红 — architrave
let crimson    = NSColor(red: 0xa0/255.0, green: 0x4a/255.0, blue: 0x64/255.0, alpha: 1.0) // 绛 — platform base
let shadowDark = NSColor(red: 0x8a/255.0, green: 0x6a/255.0, blue: 0x28/255.0, alpha: 0.7) // roof underside

guard let bitmap = NSBitmapImageRep(
    bitmapDataPlanes: nil,
    pixelsWide: size, pixelsHigh: size,
    bitsPerSample: 8, samplesPerPixel: 4,
    hasAlpha: true, isPlanar: false,
    colorSpaceName: .deviceRGB,
    bytesPerRow: 0, bitsPerPixel: 0
) else { fputs("alloc failed\n", stderr); exit(1) }

NSGraphicsContext.saveGraphicsState()
defer { NSGraphicsContext.restoreGraphicsState() }
NSGraphicsContext.current = NSGraphicsContext(bitmapImageRep: bitmap)
guard let ctx = NSGraphicsContext.current else { exit(1) }
ctx.imageInterpolation = .high
ctx.shouldAntialias = true

// Sky
sky.setFill()
NSRect(x: 0, y: 0, width: size, height: size).fill()

// Apply a flip + scale transform so SVG-style top-left coordinates work,
// scaled from the 128-unit design canvas to the requested output size.
let s = CGFloat(size) / 128.0
let xform = NSAffineTransform()
xform.translateX(by: 0, yBy: CGFloat(size))
xform.scaleX(by: s, yBy: -s)
xform.concat()

// helpers (in 128-unit design coords)
func rect(_ x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat, _ color: NSColor) {
    color.setFill()
    NSRect(x: x, y: y, width: w, height: h).fill()
}

// Moon (top-right)
goldBright.setFill()
NSBezierPath(ovalIn: NSRect(x: 102 - 6.5, y: 22 - 6.5, width: 13, height: 13)).fill()

// Platform base
rect(14, 104, 100, 9, crimson)

// Pillars — three cinnabar verticals
rect(28,   66, 9, 38, cinnabar)
rect(59.5, 66, 9, 38, cinnabar)
rect(91,   66, 9, 38, cinnabar)

// Architrave — vermilion beam
rect(22, 60, 84, 7, vermilion)

// Roof — solid gold slab with sweeping curled eaves
let roof = NSBezierPath()
roof.move(to: NSPoint(x: 8, y: 60))
roof.curve(to: NSPoint(x: 16, y: 48),
           controlPoint1: NSPoint(x: 6,  y: 54),
           controlPoint2: NSPoint(x: 8,  y: 50))
roof.line(to: NSPoint(x: 36, y: 32))
roof.line(to: NSPoint(x: 92, y: 32))
roof.line(to: NSPoint(x: 112, y: 48))
roof.curve(to: NSPoint(x: 120, y: 60),
           controlPoint1: NSPoint(x: 120, y: 50),
           controlPoint2: NSPoint(x: 122, y: 54))
roof.curve(to: NSPoint(x: 104, y: 58),
           controlPoint1: NSPoint(x: 116, y: 56),
           controlPoint2: NSPoint(x: 110, y: 56))
roof.line(to: NSPoint(x: 80, y: 60))
roof.line(to: NSPoint(x: 48, y: 60))
roof.line(to: NSPoint(x: 24, y: 58))
roof.curve(to: NSPoint(x: 8, y: 60),
           controlPoint1: NSPoint(x: 18, y: 56),
           controlPoint2: NSPoint(x: 12, y: 56))
roof.close()
goldBright.setFill()
roof.fill()

// Ridge ornament — deeper gold cap atop roof
rect(34, 28, 60, 5, goldDeep)
// Ridge end finials (chiwen-style ornaments)
rect(32, 26, 4, 6, crimson)
rect(92, 26, 4, 6, crimson)

guard let png = bitmap.representation(using: .png, properties: [:]) else {
    fputs("encode failed\n", stderr); exit(1)
}
do {
    try png.write(to: URL(fileURLWithPath: outPath))
    print("wrote \(outPath) (\(size)x\(size), \(png.count) bytes)")
} catch {
    fputs("write failed: \(error)\n", stderr); exit(1)
}
