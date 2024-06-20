# frozen_string_literal: true

# rubocop:disable all
module CustomTable
  class CellComponent < CustomAppComponent
    def initialize(flush: false, **system_arguments)
      @flush = flush
      @system_arguments = system_arguments
    end

    def system_arguments
      {tag: "td"}.deep_merge(@system_arguments).tap do |args|
        args[:classes] = class_names(
          args[:classes],
          "Netto-CustomTable__TableCell",
          "Netto-CustomTable__TableCell--flush": @flush
        )
      end
    end

    def call
      render(BaseElementComponent.new(**system_arguments)) do
        content
      end
    end
  end
end
