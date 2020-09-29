require 'pixelometry'

require './fonts/creep.rb'
require './fonts/pagan.rb'
require './fonts/terminus.rb'

$font = :pagan
$line_height = Pixelometry::Font.get($font).size

define_game title: 'Font testbed', width: 320, height: 240, background: 'gray' do
  create_scene renderer: ScreenSpaceRenderer do
    create_entity :label, text: 'PREVIEW', x: 12, y: 12, font: $font

    [
      'Hello, World!',
      'illegal1 = 0Oo',
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
      'abcdefghijklmnopqrstuvwxyz',
      '0123456789 () {} [] <> @ $',
      '~ # % ^ & * - = + / ? : ; _ | " \'',
      'The quick brown fox jumps over the lazy dog.'
    ].each_with_index do |text, line|
      create_entity :label, text: text, x: 12, y: 30 + line * $line_height, font: $font, color: 'orange'
    end
  end
end
