# Write Up

After downloading the csv file containing data with the top 953 spotify streamed songs as of 2024, we can begin to query the data.

## First, let's see what the most popular BPM is

### Step 1: Query the data using SQL (BigQuery)
```sql
SELECT 
  bpm, 
  ROUND(AVG(SAFE_CAST(streams AS INT)), 2) as avg_streams
FROM 
  `spotify.spotify_table`
GROUP BY 
  bpm
ORDER BY 
  avg_streams DESC
;
```
This yields the following table:
|index|bpm|avg\_streams|
|---|---|---|
|0|171|2409866684\.0|
|1|179|1735441776\.0|
|2|186|1718833354\.0|
|3|181|1256880657\.0|
|4|111|1230280239\.0|
|5|112|1119189675\.6|
|6|99|1065574029\.75|
|7|91|1040733924\.5|
...
|120|200|135444283\.0|
|121|74|133753727\.0|
|122|155|124560458\.5|
|123|86|74601456\.0|

### Step 2: Use the queried table to do a simple vizualization in Python
<img src="https://github.com/calebs15/spotify/assets/112104916/a506a481-568d-4b9e-aabd-fd85eb462aee.png" width="2000" height="400" />


## Next, let's get a little more detailed with our queries
What are some interesting questions we might want to ask given our data?
- Do users prefer music they can dance to?
- Who has the most streams? Why might this be?
- Do people prefer music that is more or less instrumental?
- What years are the top 15 most popular songs from?

### Question 1: Do users prefer music they can dance to?
write up
### Question 2: Who has the most streams? Why might this be?
write up
### Question 3: Do people prefer music that is more or less instrumental?
write up
### Question 4: What years are the top 15 most popular songs from?
write up
