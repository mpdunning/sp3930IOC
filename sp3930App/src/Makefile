TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = sp3930

DBD += sp3930.dbd

sp3930_DBD += base.dbd
sp3930_DBD += stream.dbd
sp3930_DBD += asyn.dbd
sp3930_DBD += asSupport.dbd
#sp3930_DBD += calcSupport.dbd
sp3930_DBD += drvAsynIPPort.dbd

sp3930_SRCS += sp3930_registerRecordDeviceDriver.cpp
sp3930_SRCS_DEFAULT += sp3930Main.cpp

sp3930_LIBS += asyn
sp3930_LIBS += autosave
sp3930_LIBS += stream
#sp3930_LIBS += calc

sp3930_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

