//
#include <string.h>
#include <omnetpp.h>

/**
*
 */
class RFIDNetComponent : public cSimpleModule
{
  //protected:
    // The following redefined virtual function holds the algorithm.
    //void Powered();
    // void CurrentlyTransmitting();

//
//Define_Module(RFIDNetComponent);

public:

// Powered Tag
void Powered()
{
    //
    getDisplayString().setTagArg("i",1,"blue");
}

// Transmitting Tag
void CurrentlyTransmitting()
{
    //
    getDisplayString().setTagArg("i",1,"green");
}

};

Define_Module(RFIDNetComponent);

