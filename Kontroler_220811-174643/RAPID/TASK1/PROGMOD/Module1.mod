MODULE Module1

    CONST robtarget Prilaz_sisaljka1:=[[225,75,290],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_sisaljka1:=[[225,75,89.5],[0,1,0,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_pocetni:=[[506.291651246,0,679.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_pcb1:=[[38.176,52.817,1.9],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Prilaz_pcb1:=[[38.176,52.817,252.4],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_grejna_ploca:=[[75,100,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_grejna_ploca:=[[75,100,250],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_display_port1:=[[21.2,11.581,5.905],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_display_port1:=[[21.2,11.581,256.005],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_display_port:=[[74.124,63.193,150.5],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_display_port:=[[74.124,62.193,6.965],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_usb_c:=[[13.065,14.47,4.16],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_usb_c1:=[[767.669,163.353,4.5],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_ethernet1:=[[17.95,20.675,17.125],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LAN:=[[56.884,133.243,13.7],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_proizvod1:=[[430,57.5,2.5],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_gotov_pcb:=[[75,100,1.5],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_skart1:=[[430,57.5,2.5],[0,0.707106781,0.707106781,0],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_pcb2:=[[104.176,52.817,1.9],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Prilaz:=[[760,240,0],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PERS tasks task_list{2}:=[["T_ROB1"],["T_ROB2"]];

    VAR syncident sync1;
    VAR syncident sync2;
    VAR syncident sync3;
    VAR num br_proizvoda;
    VAR bool flag:=TRUE;
    VAR num i:=0;
    VAR num odgovor;
    VAR intnum start_vec;
    VAR intnum stop_vec;
    VAR intnum brzina_up_down_vec;
    VAR bool stanje:=FALSE;

    TRAP start_trap
        StartMove;
    ENDTRAP

    TRAP stop_trap
        StopMove;
    ENDTRAP

    TRAP brzina_up_down_trap
        IF stanje=FALSE THEN
            SpeedRefresh 10;
            stanje:=TRUE;
        ELSE
            SpeedRefresh 100;
            stanje:=FALSE;
        ENDIF
    ENDTRAP

    PROC main()

        VAR num skart_proizvodi:=0;
        CONNECT start_vec WITH start_trap;
        CONNECT stop_vec WITH stop_trap;
        CONNECT brzina_up_down_vec WITH brzina_up_down_trap;

        ISignalDI DI_BRZINA_UP_DOWN,1,brzina_up_down_vec;
        ISignalDI DI_START,1,start_vec;
        ISignalDI DI_STOP,1,stop_vec;

        WHILE flag DO
            TPReadNum br_proizvoda,"Koliko zelite proizvoda da se izradi?";
            IF br_proizvoda>0 AND br_proizvoda<13 THEN
                flag:=FALSE;
                FOR i FROM 1 TO br_proizvoda DO
                    MoveJ Target_pocetni,v800,z0,tool0\WObj:=wobj0;
                    Path_uzmi_sisaljku1;
                    Path_uzmi_pcb1(i);
                    MoveJ Target_pocetni,v800,z0,Sisaljka\WObj:=wobj0;
                    WaitSyncTask sync1,task_list;
                    SyncMoveOn sync2,task_list;
                    Path_postavi_display_port(i);
                    Path_usb_c(i);
                    Path_ethernet(i);
                    SyncMoveOff sync2;
                    MoveJ Target_pocetni,v800,z0,tool0\WObj:=wobj0;
                    WaitSyncTask sync3,task_list;

                    IF fRandomGenerator()=6 OR fRandomGenerator()=7 THEN
                        IF fRandomGenerator()=6 OR fRandomGenerator()=7 THEN
                            Path_skart_proizvod(i);
                            skart_proizvodi:=skart_proizvodi+1;
                        ELSE
                            Path_gotov_proizvod(i);
                        ENDIF
                    ELSE
                        Path_gotov_proizvod(i);
                    ENDIF

                    Path_ostavi_sisaljku1;
                ENDFOR
                MoveJ Target_pocetni,v800,z0,tool0\WObj:=wobj0;
            ELSE
                TPWrite "Broj mora biti u intervalu od 1 do 12";
            ENDIF

            IF br_proizvoda>0 AND br_proizvoda<13 THEN
                TPWrite("Broj skart proizvoda u magacinu je "+ValToStr(skart_proizvodi));
                TPReadFK odgovor,"Da li je proces zavrsen?","DA","NE",stEmpty,stEmpty,stEmpty;
                IF odgovor=1 THEN
                    flag:=FALSE;
                ELSEIF odgovor=2 THEN
                    flag:=TRUE;
                ELSE
                    flag:=FALSE;
                ENDIF
            ENDIF

        ENDWHILE

        IDelete start_vec;
        IDelete stop_vec;
        IDelete brzina_up_down_vec;

    ENDPROC

    PROC stanje_sisaljke1(bool stanje)
        IF stanje THEN
            setDO DO_SISALJKA,1;
        ELSE
            setDO DO_SISALJKA,0;
        ENDIF
    ENDPROC

    PROC Path_dummy()
        MoveJ Prilaz_sisaljka1,v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_sisaljka1,v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_pocetni,v800,z0,tool0\WObj:=wobj0;
        MoveJ Target_pcb1,v800,z0,Sisaljka\WObj:=wobj_pcb;
        MoveJ Target_grejna_ploca,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveJ Target_prilaz_grejna_ploca,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveJ Target_display_port1,v800,z0,Sisaljka\WObj:=wobj_display_port;
        MoveJ Target_prilaz_display_port1,v800,z0,Sisaljka\WObj:=wobj_display_port;
        MoveJ Target_prilaz_display_port,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveJ Target_display_port,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveJ Target_usb_c,v800,z0,Sisaljka\WObj:=wobj_usb_c;
        MoveJ Target_usb_c1,v800,z0,Sisaljka\WObj:=wobj_pcb;
        MoveJ Target_ethernet1,v800,z0,Sisaljka\WObj:=wobj_ethernet;
        MoveJ Target_LAN,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveJ Prilaz,v800,z0,Sisaljka\WObj:=wobj_skart;
    ENDPROC

    PROC Path_uzmi_sisaljku1()
        ConfJ\Off;
        MoveJ Prilaz_sisaljka1,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Offs(Target_sisaljka1,0,0,-0.2),v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Prilaz_sisaljka1,v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        ConfJ\On;
    ENDPROC

    PROC Path_ostavi_sisaljku1()
        MoveJ Prilaz_sisaljka1,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_sisaljka1,v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Prilaz_sisaljka1,v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC Path_uzmi_pcb1(num br_proizvoda)
        VAR robtarget temptarget;

        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_pcb1,0,95*(br_proizvoda-1),0);
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ temptarget,v300,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_grejna_ploca,0,0,1),v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_pcb1,66,95*(br_proizvoda-5),0);
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ temptarget,v300,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_grejna_ploca,0,0,1),v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_pcb1,132,95*(br_proizvoda-9),0);
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ temptarget,v300,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v500,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_grejna_ploca,0,0,1),v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_grejna_ploca,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
    ENDPROC

    PROC Path_postavi_display_port(num br_proizvoda)

        VAR robtarget temptarget;

        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_display_port1,0,14.82*(br_proizvoda-1),0);
            MoveJ Offs(temptarget,0,0,200)\ID:=10,v800,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=20,v500,z0,Sisaljka\WObj:=wobj_display_port;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_prilaz_display_port1,0,0,50)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Target_prilaz_display_port\ID:=40,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=50,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=60,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_display_port,0,0,-0.2)\ID:=70,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_display_port\ID:=80,v300,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_pocetni\ID:=90,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=100,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=110,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=120,v800,z0,Sisaljka\WObj:=wobj0;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_display_port1,32.4,14.82*(br_proizvoda-5),0);
            MoveJ Offs(temptarget,0,0,200)\ID:=10,v800,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=20,v500,z0,Sisaljka\WObj:=wobj_display_port;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_prilaz_display_port1,0,0,50)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Target_prilaz_display_port\ID:=40,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=50,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=60,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_display_port,0,0,-0.2)\ID:=70,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_display_port\ID:=80,v300,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_display_port1,64.8,14.82*(br_proizvoda-9),0);
            MoveJ Offs(temptarget,0,0,200)\ID:=10,v800,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=20,v500,z0,Sisaljka\WObj:=wobj_display_port;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_prilaz_display_port1,0,0,50)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_display_port;
            MoveJ Target_prilaz_display_port\ID:=40,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=50,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_prilaz_display_port\ID:=60,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_display_port,0,0,-0.2)\ID:=70,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Target_prilaz_display_port\ID:=80,v300,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF

    ENDPROC

    PROC Path_usb_c(num br_proizvoda)

        VAR robtarget temptarget;
        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_usb_c,0,18.94*(br_proizvoda-1),0);
            stanje_sisaljke1 FALSE;
            MoveL Offs(temptarget,0,0,200)\ID:=90,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(temptarget,0,0,-0.1)\ID:=100,v100,z0,Sisaljka\WObj:=wobj_usb_c;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveL Offs(Target_usb_c,0,0,200)\ID:=110,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=120,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=130,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Target_usb_c1\ID:=140,v100,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=150,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveJ Target_pocetni\ID:=160,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=170,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=180,v800,z0,Sisaljka\WObj:=wobj0;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_usb_c,17.61,18.94*(br_proizvoda-5),0);
            stanje_sisaljke1 FALSE;
            MoveL Offs(temptarget,0,0,200)\ID:=90,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(temptarget,0,0,-0.1)\ID:=100,v100,z0,Sisaljka\WObj:=wobj_usb_c;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveL Offs(Target_usb_c,0,0,200)\ID:=110,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=120,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=130,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Target_usb_c1\ID:=140,v100,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=150,v800,z0,Sisaljka\WObj:=wobj_pcb;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_usb_c,35.22,18.94*(br_proizvoda-9),0);
            stanje_sisaljke1 FALSE;
            MoveL Offs(temptarget,0,0,200)\ID:=90,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(temptarget,0,0,-0.1)\ID:=100,v100,z0,Sisaljka\WObj:=wobj_usb_c;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveL Offs(Target_usb_c,0,0,200)\ID:=110,v800,z0,Sisaljka\WObj:=wobj_usb_c;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=120,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=130,v800,z0,Sisaljka\WObj:=wobj_pcb;
            MoveL Target_usb_c1\ID:=140,v100,z0,Sisaljka\WObj:=wobj_pcb;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_usb_c1,0,0,200)\ID:=150,v800,z0,Sisaljka\WObj:=wobj_pcb;
        ENDIF
    ENDPROC

    PROC Path_ethernet(num br_proizvoda)

        VAR robtarget temptarget;
        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_ethernet1,0,31.35*(br_proizvoda-1),0);
            MoveL Offs(temptarget,0,0,200)\ID:=190,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=200,v100,z0,Sisaljka\WObj:=wobj_ethernet;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 2;
            MoveL Offs(temptarget,0,0,200)\ID:=210,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,200)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,200)\ID:=230,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,200)\ID:=240,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,200)\ID:=250,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(Target_LAN,0,0,200)\ID:=260,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_LAN\ID:=270,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_LAN\ID:=280,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_LAN,0,0,200)\ID:=290,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_ethernet1,27.55,31.35*(br_proizvoda-5),0);
            MoveL Offs(temptarget,0,0,200)\ID:=160,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=170,v100,z0,Sisaljka\WObj:=wobj_ethernet;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveL Offs(temptarget,0,0,200)\ID:=180,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(Target_LAN,0,0,200)\ID:=190,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Offs(Target_LAN,0,0,200)\ID:=200,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_LAN\ID:=210,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_LAN,0,0,200)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_ethernet1,55.1,31.35*(br_proizvoda-9),0);
            MoveL Offs(temptarget,0,0,200)\ID:=160,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=170,v100,z0,Sisaljka\WObj:=wobj_ethernet;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveL Offs(temptarget,0,0,200)\ID:=180,v800,z0,Sisaljka\WObj:=wobj_ethernet;
            MoveL Offs(Target_LAN,0,0,200)\ID:=190,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Offs(Target_LAN,0,0,200)\ID:=200,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_LAN\ID:=210,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveL Offs(Target_LAN,0,0,200)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
    ENDPROC

    PROC Path_gotov_proizvod(num br_proizvoda)

        VAR robtarget temptarget;
        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_proizvod1,-120*(br_proizvoda-1),0,0);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_proizvodi;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_proizvod1,-120*(br_proizvoda-5),120,-100);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_proizvodi;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_proizvod1,-120*(br_proizvoda-9),240,-200);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_proizvodi;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_proizvodi;
        ENDIF
    ENDPROC

    PROC Path_skart_proizvod(num br_proizvoda)
        VAR robtarget temptarget;
        IF br_proizvoda<=4 THEN
            temptarget:=Offs(Target_skart1,-120*(br_proizvoda-1),0,0);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
        ENDIF
        IF br_proizvoda>4 AND br_proizvoda<=8 THEN
            temptarget:=Offs(Target_skart1,-120*(br_proizvoda-5),120,-100);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Prilaz,-120,40,0),v800,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
            MoveJ Offs(Prilaz,-120,40,0),v800,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
        ENDIF
        IF br_proizvoda>8 AND br_proizvoda<=12 THEN
            temptarget:=Offs(Target_skart1,-120*(br_proizvoda-9),240,-200);
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_gotov_pcb,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_sisaljke1 TRUE;
            WaitTime 1;
            MoveJ Offs(Target_gotov_pcb,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Prilaz,-120,40,0),v800,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
            stanje_sisaljke1 FALSE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,50),v800,z0,Sisaljka\WObj:=wobj_skart;
            MoveJ Offs(Prilaz,-150,60,0),v800,z0,Sisaljka\WObj:=wobj_skart;
            WaitRob\Zerospeed;
        ENDIF
    ENDPROC

    FUNC num fRandomGenerator()
        VAR num nRandom;
        VAR num nMinute;
        VAR num nSecond;
        VAR num nArrayPointer1;
        VAR num nArrayPointer2;

        VAR num myNumArray10x10{10,10}:=[[7,0,2,6,3,9,9,1,9,1],[3,8,1,6,5,2,9,4,7,9],[6,9,4,1,3,9,9,2,7,5],[8,6,0,7,6,3,5,7,0,3]
      ,[4,9,4,5,0,5,7,6,7,2],[4,5,1,5,5,2,9,5,8,0],[4,2,4,9,7,2,8,7,7,6],[0,3,6,7,8,6,9,9,2,7]
      ,[9,4,6,4,9,9,6,9,0,0],[7,0,2,6,3,9,9,1,9,1]];
        ! Random number generation based on minutes and seconds of system time
        nMinute:=GetTime(\Min);
        nSecond:=GetTime(\Sec);
        IF nMinute=0 THEN
            ! Cannot point to array index 0, will cause array index out of bounds
            nArrayPointer1:=1;
        ELSEIF nMinute>=1 AND nMinute<=6 THEN
            nArrayPointer1:=1;
        ELSEIF nMinute>=7 AND nMinute<=12 THEN
            nArrayPointer1:=2;
        ELSEIF nMinute>=13 AND nMinute<=18 THEN
            nArrayPointer1:=3;
        ELSEIF nMinute>=19 AND nMinute<=24 THEN
            nArrayPointer1:=4;
        ELSEIF nMinute>=25 AND nMinute<=30 THEN
            nArrayPointer1:=5;
        ELSEIF nMinute>=31 AND nMinute<=36 THEN
            nArrayPointer1:=6;
        ELSEIF nMinute>=37 AND nMinute<=42 THEN
            nArrayPointer1:=7;
        ELSEIF nMinute>=43 AND nMinute<=48 THEN
            nArrayPointer1:=8;
        ELSEIF nMinute>=49 AND nMinute<=54 THEN
            nArrayPointer1:=9;
        ELSEIF nMinute>=55 AND nMinute<=60 THEN
            nArrayPointer1:=10;
        ENDIF
        IF nSecond=0 THEN
            ! Cannot point to array index 0, will cause array index out of bounds
            nArrayPointer2:=1;
        ELSEIF nSecond>=1 AND nSecond<=6 THEN
            nArrayPointer2:=1;
        ELSEIF nSecond>=7 AND nSecond<=12 THEN
            nArrayPointer2:=2;
        ELSEIF nSecond>=13 AND nSecond<=18 THEN
            nArrayPointer2:=3;
        ELSEIF nSecond>=19 AND nSecond<=24 THEN
            nArrayPointer2:=4;
        ELSEIF nSecond>=25 AND nSecond<=30 THEN
            nArrayPointer2:=5;
        ELSEIF nSecond>=31 AND nSecond<=36 THEN
            nArrayPointer2:=6;
        ELSEIF nSecond>=37 AND nSecond<=42 THEN
            nArrayPointer2:=7;
        ELSEIF nSecond>=43 AND nSecond<=48 THEN
            nArrayPointer2:=8;
        ELSEIF nSecond>=49 AND nSecond<=54 THEN
            nArrayPointer2:=9;
        ELSEIF nSecond>=55 AND nSecond<=60 THEN
            nArrayPointer2:=10;
        ENDIF
        nRandom:=myNumArray10x10{nArrayPointer1,nArrayPointer2};
        RETURN nRandom;
    ENDFUNC

ENDMODULE