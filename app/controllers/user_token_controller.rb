class UserTokenController < Knock::AuthTokenController

    # skip_before_action - skip the authenticity verification
    # Compared with application controller, class for UserTokenController actually 
    # inherits from Knock::AuthTokenController and not the Application Controller 
    # so we do need to manually add this behaviour here. 
    skip_before_action :verify_authenticity_token

end
