require "administrate/base_dashboard"

class CustomerDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    profile_pic: Field::Refile,
    created_at: Field::DateTime,
    email: Field::Email,
    password: Field::Password,
    categ: Field::Enum,
    email_subscriber: Field::Boolean,
    lifetime_value: Field::Number.with_options(prefix: "$", decimals: 2),
    name: Field::String,
    orders: Field::HasMany,
    updated_at: Field::DateTime,
    kind: Field::Select.with_options(collection: Customer::KINDS),
  }

  COLLECTION_ATTRIBUTES = ATTRIBUTE_TYPES.keys
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys - [:name]
  FORM_ATTRIBUTES = [
    :profile_pic,
    :name,
    :categ,
    :email,
    :password,
    :email_subscriber,
    :kind,
  ].freeze

  def display_resource(customer)
    customer.name
  end
end
