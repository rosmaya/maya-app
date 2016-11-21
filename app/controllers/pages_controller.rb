class PagesController < ApplicationController
  def home
    @rekam_medis = RekamMedi.all
  end
end
