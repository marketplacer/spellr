# frozen_string_literal: true

require 'pathname'

module Spellr
  class File < Pathname
    def self.wrap(file)
      file.is_a?(Spellr::File) ? file : Spellr::File.new(file)
    end

    def hashbang
      return if extname != ''
      return unless first_line&.start_with?('#!')

      first_line
    end

    def first_line
      @first_line ||= each_line.first
    end

    def fnmatch?(pattern)
      relative_path.fnmatch?(pattern, ::File::FNM_DOTMATCH) ||
        ::File.fnmatch?(basename.to_s, pattern, ::File::FNM_DOTMATCH)
    end

    def relative_path
      @relative_path ||= relative_path_from(Spellr.config.pwd)
    end
  end
end
