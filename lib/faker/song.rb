module Faker
  # Based on Perl's Text::Lorem
  class Song < Base
    class << self

      def lyric
        translate('faker.song.slapchop').sample
      end

      def lyrics(num = 3)
        (translate('faker.song.slapchop')[]).shuffle[0, resolve(num)]
      end

      def sentence(lyric_count = 4, random_lyrics_to_add = 6)
        lyrics(lyric_count + rand(random_lyrics_to_add.to_i).to_i).join(' ').capitalize + '.'
      end

      def sentences(sentence_count = 3)
        [].tap do |sentences|
          1.upto(resolve(sentence_count)) do
            sentences << sentence(3)
          end
        end
      end

      def paragraph(sentence_count = 3, random_sentences_to_add = 3)
        sentences(resolve(sentence_count) + rand(random_sentences_to_add.to_i).to_i).join(' ')
      end

      def paragraphs(paragraph_count = 3)
        [].tap do |paragraphs|
          1.upto(resolve(paragraph_count)) do
            paragraphs << paragraph(3)
          end
        end
      end
    end

  private

    # If an array or range is passed, a random value will be selected.
    # All other values are simply returned.
    def self.resolve(value)
      case value
      when Array then value[rand(value.size)]
      when Range then rand((value.last+1) - value.first) + value.first
      else value
      end
    end
  end
end
