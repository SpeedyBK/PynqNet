#include "FIR16BitA.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void FIR16BitA::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_AWVALID\" :  \"" << s_axi_BUS_A_AWVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"s_axi_BUS_A_AWREADY\" :  \"" << s_axi_BUS_A_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_AWADDR\" :  \"" << s_axi_BUS_A_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_WVALID\" :  \"" << s_axi_BUS_A_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_WREADY\" :  \"" << s_axi_BUS_A_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_WDATA\" :  \"" << s_axi_BUS_A_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_WSTRB\" :  \"" << s_axi_BUS_A_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_ARVALID\" :  \"" << s_axi_BUS_A_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_ARREADY\" :  \"" << s_axi_BUS_A_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_ARADDR\" :  \"" << s_axi_BUS_A_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_RVALID\" :  \"" << s_axi_BUS_A_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_RREADY\" :  \"" << s_axi_BUS_A_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_RDATA\" :  \"" << s_axi_BUS_A_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_RRESP\" :  \"" << s_axi_BUS_A_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_BVALID\" :  \"" << s_axi_BUS_A_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_BUS_A_BREADY\" :  \"" << s_axi_BUS_A_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_BUS_A_BRESP\" :  \"" << s_axi_BUS_A_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

