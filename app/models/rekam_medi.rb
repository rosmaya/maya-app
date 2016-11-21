# == Schema Information
#
# Table name: rekam_medis
#
#  id           :integer          not null, primary key
#  tanggal      :date
#  no_bpjs      :string
#  no_rm        :integer
#  nama_pasien  :string
#  kel_umur     :integer
#  jk           :string
#  gakin        :boolean
#  desa         :string
#  rt           :string
#  rw           :string
#  poli         :string
#  pasien_b_l   :boolean
#  diagnosa     :text
#  icd10        :string
#  gol_penyakit :string
#  resep        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RekamMedi < ApplicationRecord
end
