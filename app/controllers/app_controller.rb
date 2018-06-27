class AppController < ApplicationController
  def bootstrap
    render html: "", layout: true
  end
end
