class MemberSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :email,
             :major,
             :github_username,
             :linkedin_username,
             :status,
             :role,
             :description,
             :start_date,
             :end_date,
             :generation

  has_many :teams
  has_many :events
  has_many :arrangements

  def name
    object.full_name
  end
end
