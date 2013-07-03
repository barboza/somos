class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    if resource.persisted? && params["facebook"]
      resource.create_authorization(provider: params["facebook"]["provider"], uid: params["facebook"]["uid"])
    end

    if resource.persisted? && params["twitter"]
      resource.create_authorization(provider: params["twitter"]["provider"], uid: params["twitter"]["uid"])
    end
  end

  def update
    super
  end
end