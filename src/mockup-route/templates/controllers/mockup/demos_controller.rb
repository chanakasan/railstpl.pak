# frozen_string_literal: true

module Mockup
  class DemosController < ApplicationController
    def index
      @list = Rails.root.glob('app/views/mockup/demos/_*.html.erb').sort.map do |file|
        File.basename(file)
            .sub('.html.erb', '')
            .sub(/^_/, '')
      end
    end

    def show
      @partial = params[:id]
    end
  end
end
