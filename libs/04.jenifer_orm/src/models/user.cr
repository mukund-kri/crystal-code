require "jennifer"

class User < Jennifer::Model::Base
  with_timestamps

  mapping(
    id: Primary64,
    name: String,
    age: Int32,
    created_at: Time?,
    updated_at: Time?,
  )
end
