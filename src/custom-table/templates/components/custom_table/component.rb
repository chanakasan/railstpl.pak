# frozen_string_literal: true

# rubocop:disable all
module CustomTable
  class Component < CustomAppComponent
    renders_many :columns, ->(title, **system_arguments, &block) do 
      CustomTable::ColumnComponent.new(title, **system_arguments, &block)
    end

    alias :column :with_column

    def initialize(data, **system_arguments)
      @data = data
      @system_arguments = system_arguments
    end

    def system_arguments
      {tag: "div"}.deep_merge(@system_arguments).tap do |args|
        args[:classes] = class_names(
          args[:classes],
          "Netto-CustomTable"
        )
      end
    end

    def row_arguments(row)
      {tag: "tr"}.tap do |args|
        args[:classes] = class_names(
          "Netto-CustomTable__TableRow",
          "Netto-CustomTable__TableRow--unclickable"
        )
        args[:id] = dom_id(row) if row.respond_to?(:to_key)
      end
    end

    def render_cell(**arguments, &block)
      render(CustomTable::CellComponent.new(**arguments), &block)
    end
  end
end
