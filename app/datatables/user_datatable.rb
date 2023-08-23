class UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "User.id", cond: :eq },
      email: { source: "User.email", cond: :like }
    }
  end

  def data
    records.map do |record|
      {
        # example:
        id: record.id,
        email: record.email
      }
    end
  end

  def get_raw_records
    # insert query here
    User.all
  end

end
