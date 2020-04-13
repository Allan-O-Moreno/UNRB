//
//  Ansari.swift
//  UNRB
//
//  Created by Johan  on 4/10/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct AB: View {
    var body: some View {
        VStack{
            Image("Ansari")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(100)
            .padding(.bottom, 50)
            Text("Ansari Business Building")
            NavigationLink(destination: MapViewAB())
            {
                Text("Schedules")
                
            }
            NavigationLink(destination: MapViewAB())
            {
                Text("Directions")
                
            }
            List{
            Text("The Ansari Business Building, completed in 1982, provides 30,460 square feet for The College of Business. Also housed in the building are the Nevada Small Business Development Center, Bureau of Business and Economic Research, the College of Liberal Arts, Anthropology Department and a number of other academic units. The building also houses the Anthropology Research Museum and the School of Social Work. The building is named in honor of Nazir Ansari, professor of managerial sciences from 1967 to 1994.")
            }
        }
    }
}

/*struct ARTM: View {
    var body: some View {
        Text("Artemisia Building")
    }
}

struct CMM: View {
    var body: some View {
        Text("Center for Molecular Medicine")
    }
}

struct CB: View {
    var body: some View {
        Text("Chemistry Building")
    }
}

struct CFA: View {
    var body: some View {
        Text("Church Fine Arts")
    }
}

struct CE: View {
    var body: some View {
        Text("Continuing Education")
    }
}*/

struct DMSC: View {
    var body: some View {
        VStack{
            Image("DMS")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("Davidson Math and Science Center")
        }
    }
}

/*struct EJCH: View {
    var body: some View {
        Text("Edmund J. Cain Hall")
    }
}*/

struct WFC: View {
    var body: some View {
        VStack{
            Image("Fitness")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(100)
            .padding(.bottom, 50)
            Text("E.L. Wiegand Fitness Center")
            Button("Class Schedules") {UIApplication.shared.open(URL(string: "https://www.unr.edu/fitness/drop-in-class-schedule")!)}
            Button("Facilty Reservation Request") {UIApplication.shared.open(URL(string: "https://fitness.unr.edu/Facility/ReservationRequest")!)}
            NavigationLink(destination: MapViewFitness())
            {
                Text("Directions")
                
            }
            List{
                Text("Opened in February of 2017, the E.L Wiegand Fitness Center kicked off a new era of campus health and wellness. In addition to the myriad machines, collections of weights and other exercise equipment, the state-of-the-art center boasts some of the largest windows of any building on campus and a fitness stairway, a series of deep and somewhat steep stairs leading from the first floor entry all the way to the fourth floor, where a 1/8th mile running track awaits. The building also features five multi-purpose rooms for fitness classes such as yoga, Pilates, aerobics and Zumba; a gymnasium with three multi-use courts; a cardio zone with exercise machines such as stationary bikes and treadmills; and much, much more. You can find this testament to fitness directly across from the Joe Crowley Student Union.")
            }
        }
    }
    
}

/*struct FSSB: View {
    var body: some View {
        Text("Fitzgeral Student Services Building")
    }
    
}

struct FA: View {
    var body: some View {
        Text("Fleischmann Agriculture")
    }
    
}

struct FP: View {
    var body: some View {
        Text("Fitzgerald Planetarium")
    }
    
}

struct FH: View {
    var body: some View {
        Text("Frandsen Humanities")
    }
    
}

struct HREL: View {
    var body: some View {
        Text("Harry Reid Engineering Laboratory")
    }
    
}*/

struct JCSU: View {
    var body: some View {
        VStack{
            Image("JSCU")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(100)
            .padding(.bottom,50)
            Text("Joe Crowley Student Union")
            Button("Building/Vendor Hours") {UIApplication.shared.open(URL(string: "https://www.unr.edu/union/hours")!)}
            Button("Building Directory") {UIApplication.shared.open(URL(string: "https://www.unr.edu/union/directory")!)}
            NavigationLink(destination: MapViewJCSU())
            {
                Text("Directions")
                
            }
            List{
                Text("Completed and formally dedicated in November 2007, the Joe Crowley Student Union is one of the most transformational buildings ever built on campus. The 167,000-square-foot, “green” environmentally friendly facility signals a shift in campus expansion, offering the campus and community a new centrally located “front door” to the University from Virginia Street. Named in honor of University President Joe Crowley, whose 23-year tenure as the institution’s chief executive is a record, the Joe Crowley Student Union features a two-story ASUN Bookstore, a variety of food and drink retailers, a 1,200-seat grand ballroom, a 220-seat, two-level movie theater, a 2,000-square-foot student organization center, and is home to the Associated Students of the University of Nevada, Graduate Student Association and the Center for Cultural Diversity.")
            }
        }
    }
    
}

/*struct JT: View {
    var body: some View {
        Text("Jot Travis Building")
    }
    
}

struct LP: View {
    var body: some View {
        Text("Leifson Physics")
    }
    
}

struct LS: View {
    var body: some View {
        Text("Life Science")
    }
    
}*/

struct MSS: View {
    var body: some View {
        VStack{
            Image("Mack Social")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("Mack Social Sciences")
        }
    }
    
}

/*struct MM: View {
    var body: some View {
        Text("Mackay Mines")
    }
    
}

struct MS: View {
    var body: some View {
        Text("Mackay Science")
    }
    
}*/

struct MIKC: View {
    var body: some View {
        VStack{
            Image("kc")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(100)
            .padding(.bottom,50)
            Text("Mathewson-IGT Knowlege Center")
            Button("Reserve a Room") {UIApplication.shared.open(URL(string: "https://www.cisweb3.unr.edu/emswebapp_kc/")!)}
            Button("KC Hours") {UIApplication.shared.open(URL(string: "https://guides.library.unr.edu/library-info/departments")!)}
            NavigationLink(destination: MapViewKC())
            {
                Text("Directions")
                
            }
            List{
            Text("Completed in 2008, the Mathewson-IGT Knowledge Center is one of the most technologically advanced libraries in the country. Computing and information technologies and support are combined with the latest in multimedia tools and the resources of the University library in a physical environment designed for comfort, efficiency and collaboration. The $75.3 million, 295,000-square-foot, five-story building represents the University's most ambitious capital project. More than $22 million for the project was raised in private donations, including a combined $10 million gift from the Mathewson Family and International Game Technology.")
            }
        }
    }
    
}

struct SLH: View {
    var body: some View {
        VStack{
            Image("Schulich")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("Schulich Lecture Hall")
        }
    }
    
}

struct SEM: View {
    var body: some View {
        VStack{
            Image("Scrugham")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("Scrugham Engineering and Mines")
        }
    }

}

struct PSAC: View {
    var body: some View {
        VStack{
            Image("PSAC")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("William N. Pennington Student Achievement Center")
        }
    }
    
}

struct WRB: View {
    var body: some View {
        VStack{
            Image("Raggio")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            Text("William J. Raggio")
        }
    }
    
}
struct BInfo_Previews: PreviewProvider {
    static var previews: some View {
        AB()
    }
}

