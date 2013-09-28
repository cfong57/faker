module Faker
  # Based on Perl's Text::Lorem
  class Song < Base
    class << self

      def lyric(punc = "")
        translate('faker.song.slapchop').sample + punc
      end

      def sentence
        lyric(rand_punc)
      end

      def paragraph(sentences = 1, random_sentences = 4)
        para = ""
        (sentences + rand(random_sentences)).times {para += (sentence + " ")}
        para.chop
      end

      def paragraphs(paras = 2, random_paras = 4)
        text = ""
        (paras + rand(random_paras)).times {text += (paragraph + "\n")}
        text.chop
      end

      private

      #simple version, a more complex text constructor could do more with conditional logic
      #e.g. making sure sentences never end with a comma unless another sentence follows
      def rand_punc
        case rand(4)
          when 0 then "..."
          when 1 then "?"
          when 2 then "!"
          when 3 then "."
          else "."
        end
      end
    end
  end
end