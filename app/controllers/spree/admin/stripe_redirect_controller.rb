class Spree::Admin::StripeRedirectController < ApplicationController
  skip_before_filter :single_signon

	def setup
		code = params["code"]
		brand_domain = Spree::Tenant.find_by_id(params["state"]).domain
		redirect_to url_for domain: brand_domain, controller: 'stripe_connect', action: 'setup', code: code
	end
end
