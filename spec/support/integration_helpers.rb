module IntegrationHelpers
	# def sign_in(user = double('user'))
	# 	if user.nil?
	# 		allow(Rails.application.env_config['warden']).to receive(:authenticate_user!).and_throw(:warden, {scope: :user})
	# 		allow(controller).to receive(:current_user).and_return(nil)
	# 	else
	# 		allow(Rails.application.env_config['warden']).to receive(:authenticate_user!).and_return(user)
	# 		allow(controller).to receive(:current_user).and_return(user)
	# 	end
	# end
end