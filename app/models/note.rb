class Note < ApplicationRecord
    include ExportCsv
  include ExportPdf
end
