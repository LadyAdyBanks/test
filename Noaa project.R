library(rnoaa)

#station ID = Davenport Airport 
stID <- 'GHCND:USW00094982'

#API token so I don't have to print it all the time
apitkn <- "yfGPmXpmJZUAplFdCnCiUKkTZNFGnswR"

#ncdc_stations(datasetid='GHCND', stationid='GHCND:US1IAST0004', token = "yfGPmXpmJZUAplFdCnCiUKkTZNFGnswR")

#out <- ncdc(datasetid='NORMAL_DLY', stationid ='GHCND:US1IAST0004',  datatypeid='dly-tmax-normal', startdate = '2019-04-01', enddate = '2019-05-15', token = "yfGPmXpmJZUAplFdCnCiUKkTZNFGnswR")

#out <- ncdc(datasetid='PRECIP_HLY', stationid ='GHCND:US1IAST0004', datatypeid='HPCP', startdate = '2010-05-01', enddate = '2010-05-10', token = "yfGPmXpmJZUAplFdCnCiUKkTZNFGnswR")

out1 <- ncdc(datasetid = 'GHCND', stationid = 'GHCND:USW00094982' , startdate = '2020-05-01', enddate = '2020-07-01', token = "yfGPmXpmJZUAplFdCnCiUKkTZNFGnswR")
#print(out1)

#View(out1)
out1$data
ncdc_plot(out1)

out2 <- ncdc(datasetid='NORMAL_DLY', stationid= stID, datatypeid='dly-tmax-normal', startdate = '2020-01-01', enddate = '2020-07-01', limit = 300, token = apitkn)
ncdc_plot(out)
