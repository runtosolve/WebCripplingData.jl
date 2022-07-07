# WebCripplingData

## C cross section
![C cross section]("/Users/zhoushangqun/Documents/dev/WebCripplingData.jl/C_cross_section.png")
## B1
flange length of the left C cross section in above image
## B2
flange length of the right C cross section
## web_link
[web_link](https://scholarsmine.mst.edu/cgi/viewcontent.cgi?article=1009&context=ccfss-aisi-spec)

## r
radius of top web-flange connection, top flange-lip connection, bottom web-flange conncetion and bottom flange-lip connection

## t
thickness of the web

## D1
web length of the left C cross section

## D2
web length of the right C cross section

## d1
lip depth for the left C cross section

## d2
lip depth for the right C cross section

## n 
length of the bearing plate

## L
loading length

## Pt
P test load

## fy
fastened to support

## Here is how you load the data in Julia

```julia
# turn a json string source into a DataFrame

filename = the path of json file you download from Github
using DataFrames, JSON3, JSONTables
json_string = read(filename, String)
json_source = JSON3.read(json_string)
df = DataFrame(jsontable(json_source))

# json source can be array of objects, or object of arrays
# write out a DataFrame as an array of objects
arraytable(df)

# write out a DataFrame as an object of arrays
objecttable(df)
```

## Here is how you load the data in Python
### Convert simple JSON string to DataFrame

```python
import pandas as pd
# First parameter can be in three formats: A JSON String, A path to the JSON file, The JSON file's name

# Second parameter (orient): Specify the orientation of the JSON string

df = pd.read_json('string/path/file_name', orient) 
print(df)
```

## Here is how you load the data in Matlab
``` matlab
filename = the path of json file you download from Github;
fid = fopen(filename);
raw = fread(fid,inf);
string = char(raw');
fclose(fid);
df = jsondecode(string);
```
