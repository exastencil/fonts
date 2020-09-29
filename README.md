# Fonts for Pixelometry

A collection of fonts, ready to use with
[Pixelometry](https://github.com/exastencil/pixelometry), a pixel-based,
isometric game engine.

## Fonts

- [Creep](https://github.com/romeovs/creep) by [romeovs](https://github.com/romeovs)
  - 16 pixel height
  - Monospaced
- Terminus by Dimitar Toshkov Zhekov (XWindow terminal font)
  - 12 pixel height
  - Monospaced
- Pagan by Michael Prins (example custom font)
  - 11 pixel height

## Technique

Most fonts are generated from BDF (Glyph Bitmap Distribution File) files using
the font generator supplied with Pixelometry (`pxl font`). The format entails
a Ruby file with the font constructs, paired with a PNG that acts as a sprite
sheet. Font images take into account spacing and are rendered in white so the
color can be changed in-engine.

Custom fonts may be added by generating a font construct and sprite. This is
needed if the font contains opacity or outlines.

## License

You may freely use the Ruby code included here, but please adhere to the
licensing agreements of the fonts you use. I will do my best to record the
source of a font and its license to assist with this.
