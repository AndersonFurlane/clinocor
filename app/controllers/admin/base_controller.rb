class Admin::BaseController < ApplicationController
  before_filter :authenticate_medic!
  layout 'admin/admin'
end