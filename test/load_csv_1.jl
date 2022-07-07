using WebCripplingData
using CSV
using DataFrames
using JSON
using Base64
using StringEncodings
using JSONTables
using DataStructures

Data = CSV.read(pkgdir(WebCripplingData, "assets", "web_crippling_data.csv"), DataFrame)

# Data = CSV.File(open(read, "./Data.csv", enc"GB18030")) |> DataFrame
jts_objecttable_source = objecttable(Data)
open("jts_objecttable.json", "w") do f
    write(f, jts_objecttable_source)
end
