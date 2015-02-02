class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :latitude, :longitude, :latest_data, :owner, :mac_address, :geohash
  has_one :kit
  has_many :sensors

  def owner
    object.owner.username
  end

end
