# == Schema Information
#
# Table name: rekam_medis
#
#  id           :integer          not null, primary key
#  tanggal      :date
#  no_bpjs      :string(255)
#  no_rm        :integer
#  nama_pasien  :string(255)
#  kel_umur     :string(255)
#  jk           :string(255)
#  gakin        :boolean
#  desa         :string(255)
#  rt           :string(255)
#  rw           :string(255)
#  poli         :string(255)
#  pasien_b_l   :boolean
#  diagnosa     :text(65535)
#  icd10        :string(255)
#  gol_penyakit :string(255)
#  resep        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RekamMediTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
