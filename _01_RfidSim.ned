//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package _01_rfidsim;

//import org.mixim.modules.tag.Host80211;

//import org.mixim.base.modules.BaseNetwork;

network _01_RfidSim extends BaseNetwork
{
    parameters:
        int numTags; // total number of hosts in the network
        int numReaders; // total number of hosts in the network
        @display("bgi=background/terrain,s");

    submodules:
        reader[numReaders]: RFIDNetComponent {
            //@display("p=75,150;i=device/rfidreader");
            @display("i=device/rfidreader");
        }
        
        tag[numTags]: RFIDNetComponent {
        @display("i=device/rfidtag_s");
        }

    connections allowunconnected:
    // all connections and gates are to be generated dynamically
}
