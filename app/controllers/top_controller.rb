class TopController < ApplicationController
    def main
        if session[:login_uid]!= nil
            render "main"
        else
            render "login"
        end
    end
    
    def login
        if params[:uid] == "kindai" && params[:password] =="sanriko"
            session[:login_uid] = params[:uid]
            redirect_to "/"
        else
            session[:login_uid] = nil
            flash[:notice] = "not match"
            render "login"
        end
    end
end
