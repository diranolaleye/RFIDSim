//package org.mixim.modules.node;
package _01_rfidsim;
// 

// Example host module using an 802.11 Network interface card.
//
module RFIDNetComponent extends WirelessNode
{
    parameters:
        nicType = "Nic80211";
        @signal[TagReadingVector](type="long");
        @statistic[TagReadingVector](title="Tag Reading Time Vector (Tag vs Time)";record=vector);
        
}
