#!../../bin/linux-x86_64/sp3930

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../sp3930App/Db:.")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/sp3930.dbd"
sp3930_registerRecordDeviceDriver pdbbase

epicsEnvSet("P","ESB:SP3930")
drvAsynIPPortConfigure ("L0","ts-esb-06:2002",0,0,0)

#asynSetTraceMask("L0",-1,0x019)
#asynSetTraceIOMask("L0",-1,0x2)

dbLoadRecords("db/sp3930.db","IOCNAME=${IOC},P=ESB:SP3930,PORT=P0,L=L0,A=0")

cd ${TOP}/iocBoot/${IOC}
iocInit()

