//
//  BList.swift
//  UNRB
//
//  Created by Johan  on 3/8/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct BList: View{
    var body: some View{
                BList1()
                //BList2()
                //BList3()
    }
}

struct BList1: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: AB())
                {
                    Text("Ansari Business Building")
                    
                }
               /* NavigationLink(destination: ARTM())
                {
                    Text("Artemisia Building")
                    
                }
                NavigationLink(destination: CMM())
                {
                    Text("Center for Molecular Medicine")
                    
                }
                NavigationLink(destination: CB())
                {
                    Text("Chemistry Building")
                    
                }
                NavigationLink(destination: CFA())
                {
                    Text("Church Fine Arts")
                    
                }
                NavigationLink(destination: CE())
                {
                    Text("Continuing Education")
                    
                }*/
                NavigationLink(destination: DMSC())
                {
                    Text("Davidson Math and Science")
                    
                }
                NavigationLink(destination: EJCH())
                {
                    Text("Edmund J. Cain Hall")
                    
                }
                NavigationLink(destination: EWFC())
                {
                    Text("E.L. Wiegand Fitness Center")
                    
                }
                /*NavigationLink(destination: FSSB())
                {
                    Text("Fitzgerald Student Services Building")
                    
                }*/
                NavigationLink(destination: JCSU())
                {
                    Text("Joe Crowley Student Union")
                    
                }
                NavigationLink(destination: MSS())
                {
                    Text("Mack Social Sciences")
                    
                }
                NavigationLink(destination: MIKC())
                {
                    Text("Mathewson-IGT Knowledge Center")
                    
                }
                NavigationLink(destination: SEM())
                {
                    Text("Scrugham Engineering and Mines")
                    
                }
                NavigationLink(destination: WRB())
                {
                    Text("William J. Raggio")
                    
                }
                NavigationLink(destination: PSAC())
                {
                    Text("William N. Pennington Student Achievement Center")
                    
                }
                
            }.navigationBarTitle("List Of UNR Buildings")
        }
    }
}

/*struct BList2: View {
    var body: some View {
        //NavigationView {
            VStack {
                NavigationLink(destination: FA())
                {
                    Text("Fleischmann Agriculture")
                    
                }
                NavigationLink(destination: FP())
                {
                    Text("Fitzgeral Planetarium")
                    
                }
                NavigationLink(destination: FH())
                {
                    Text("Frandsen Humanities")
                    
                }
                NavigationLink(destination: HREL())
                {
                    Text("Harry Reid Engineering Laboratory")
                    
                }
                NavigationLink(destination: JCSU())
                {
                    Text("Joe Crowley Student Union")
                    
                }
                NavigationLink(destination: JT())
                {
                    Text("Jot Travis Building")
                    
                }
                NavigationLink(destination: LP())
                {
                    Text("Leifson Physics")
                    
                }
                NavigationLink(destination: LS())
                 {
                     Text("Life Science")
                     
                 }
                NavigationLink(destination: MSS())
                {
                    Text("Mack Social Sciences")
                    
                }
                NavigationLink(destination: MM())
                {
                    Text("Mackay Mines")
                    
                }
                /*NavigationLink(destination: MS())
                {
                    Text("Mackay Science")
                    
                }*/
            //}.navigationBarTitle("List Of UNR Buildings")
        }
    }
}
struct BList3: View {
    var body: some View {
        VStack{
            BList1()
            BList2()
        }
    }
}*/
struct BList_Previews: PreviewProvider {
    static var previews: some View {
        BList1()
    }
}
