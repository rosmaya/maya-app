class PagesController < ApplicationController
  def home
    @rekam_medis = RekamMedi.all
  end

#untuk menghapus jika terdapat nilai yang kosong
  def missing_value
    redirect_to action: :home
  end

#untuk analisis tiap atribut
  def analys
    redirect_to action: :home
  end

  def convert
    RekamMedi.all.each do |rm|
     rm.kel_umur = '1' if rm.kel_umur == '0 - 7 hari'
     rm.kel_umur = '2' if rm.kel_umur == '8 - 28 hari'
     rm.kel_umur = '3' if rm.kel_umur == '29 - 1 tahun'
     rm.kel_umur = '4' if rm.kel_umur == '2 - 4 tahun'
     rm.kel_umur = '5' if rm.kel_umur == '5 - 9 tahun'
     rm.kel_umur = '6' if rm.kel_umur == '10 - 14 tahun'
     rm.kel_umur = '7' if rm.kel_umur == '15 - 19 tahun'
     rm.kel_umur = '8' if rm.kel_umur == '20 - 44 tahun'
     rm.kel_umur = '9' if rm.kel_umur == '45 - 54 tahun'
     rm.kel_umur = '10' if rm.kel_umur == '55 - 59 tahun'
     rm.kel_umur = '11' if rm.kel_umur == '60 - 69 tahun'
     rm.kel_umur = '12' if rm.kel_umur == '>=70 tahun'

      rm.jk = '0' if rm.jk =='p'

      rm.icd10 = 'K00-K93' if rm.diagnosa == 'Karies gigi'
      rm.icd10 = 'K00-K93' if rm.diagnosa == 'Karies gigi'
      rm.icd10 = 'K00-K93' if rm.diagnosa == 'Karies gigi'
      rm.icd10 = 'K00-K93' if rm.diagnosa == 'Karies gigi'

      rm.save
      # rm.update(kel_umur: kel_umur, icd10: var_icd10) unless kel_umur == nil && icd10 == nil
    end
    redirect_to action: :home
  end
end
