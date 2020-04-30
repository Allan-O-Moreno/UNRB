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
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Ansari Business Building").fontWeight(.bold)
            HStack{
            NavigationLink(destination: MapViewAB())
            {
                SchedulesContent()
                
            }
            NavigationLink(destination: MapViewAB())
            {
                DirectionsContent()
                
            }
            }
            HStack{
                Button("Business") {UIApplication.shared.open(URL(string: "https://www.unr.edu/business")!)}
                 .foregroundColor(.white)
                 .padding()
                 .frame(width:150, height: 40)
                 .background(Color.black)
                 .cornerRadius(35.0)
                
            Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/ansari_business_building_628")!)}
             .foregroundColor(.white)
             .padding()
             .frame(width:150, height: 40)
             .background(Color.black)
             .cornerRadius(35.0)
             .padding()
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
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Davidson Math and Science Center")
                .fontWeight(.bold)
                .padding(.bottom)
            
            
            NavigationLink(destination: MapViewDMSC())
            {
                SchedulesContent()
                
            }
            HStack{
            NavigationLink(destination: MapViewDMSC())
            {
                DirectionsContent()
                
            }
           Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/davidson_math_and_science_center_498")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
            }
            List{
            Text("The Davidson Mathematics and Science Center provides an integrated and centralized 21st century environment for learning and research. Specifically, it has the following features: 100,000-square-foot state-of-the-art teaching and research facility with mathematics and science wings. The 464-seat Nell. J. Redfield Foundation Auditorium features a walk-up, walk-out stage that encourages lecturers to step down and interact with the audience whenever possible; stage area features three screens and mobile podium. 27 modern laboratories, each with the capacity for 20 to 24 students, and four large classrooms, each with the capacity for 75 students. Wireless Internet access throughout the entire facility. Enhanced environment controls and space for culture preparation in eight biological science laboratories. Increased glass hood space for improved observation and greater control over experiments in the seven general chemistry laboratories. Student meeting areas with whiteboards for students and teaching assistants to meet and interact with each other outside classrooms and laboratories. Electronic interfaces, information technology platforms, projectors, modern audio visual and presentation equipment, whiteboards and pull-down screens in every laboratory and classroom. A 50-seat computational classroom-the largest on campus-to teach students the use of software for data analysis and visualization. Space for the dean of the College of Science suite and the Department of Mathematics in the administrative wing of the facility.")
            }
        }
    }
}

struct EJCH: View {
    var body: some View {
        VStack{
            Image("Edmund")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Edmund J. Cain Hall").fontWeight(.bold)
            
            HStack{
            NavigationLink(destination: MapViewEJCH())
            {
                SchedulesContent()
                
            }
            NavigationLink(destination: MapViewEJCH())
            {
                DirectionsContent()
                
            }
            }
            HStack{
                Button("Engineeing Advising") {UIApplication.shared.open(URL(string: "https://events.unr.edu/davidson_math_and_science_center_498")!)}
                     .foregroundColor(.white)
                     .padding()
                     .frame(width:150, height: 40)
                     .background(Color.black)
                     .cornerRadius(35.0)
                            .font(.system(size: 12))
                    //.lineLimit(2)
                    
                Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/edmund_j_cain_hall_698")!)}
                     .foregroundColor(.white)
                     .padding()
                     .frame(width:150, height: 40)
                     .background(Color.black)
                     .cornerRadius(35.0)
                     .padding()
            }
            List{
            Text("Edmund J. Cain Hall was opened in fall 1972 on one of the north slopes of campus as the College of Education building. The building is named in honor of the longtime College of Education Dean Edmund J. Cain, whose work in the 1960s and 1970s helped attract a national-class faculty to the school. It is home to the Departments of Foreign Languages and Literatures, Philosophy, Military Science and also includes the Writing Center, English as a Second Language Center, the Addiction Training Center, the Center for the Application of Substance Abuse Technologies, Upward Bound, Teaching and Learning Technologies, and KUNR public radio station. The Engineering advising center is located in EJCH 108")
            }
        }
    }
    
}

struct EWFC: View {
    var body: some View {
        VStack{
            Image("Fitness")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("E.L. Wiegand Fitness Center")
                .fontWeight(.bold)
                .padding(.bottom)
            
            Button("Facilty Reservation Request") {UIApplication.shared.open(URL(string: "https://fitness.unr.edu/Facility/ReservationRequest")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:250, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
        
            HStack{
            Button("Class Schedules") {UIApplication.shared.open(URL(string: "https://www.unr.edu/fitness/drop-in-class-schedule")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:200, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
                
            NavigationLink(destination: MapViewEWFC())
            {
                DirectionsContent()
                
            }
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
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Joe Crowley Student Union")
                .fontWeight(.bold)
                .padding(.bottom)
            
            Button("Building/Vendor Hours") {UIApplication.shared.open(URL(string: "https://www.unr.edu/union/hours")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:250, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            HStack{
            Button("Building Directory") {UIApplication.shared.open(URL(string: "https://www.unr.edu/union/directory")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:200, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            NavigationLink(destination: MapViewJCSU())
            {
                DirectionsContent()
                
            }
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
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Mack Social Sciences")
                .fontWeight(.bold)
                .padding(.bottom)
             
             NavigationLink(destination: MapViewMSS())
             {
                 SchedulesContent()
                 
             }
             HStack{
             NavigationLink(destination: MapViewMSS())
             {
                 DirectionsContent()
                 
             }
            Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/mack_social_sciences_102")!)}
             .foregroundColor(.white)
             .padding()
             .frame(width:150, height: 40)
             .background(Color.black)
             .cornerRadius(35.0)
             .padding()
             }
            List{
            Text("This building is named after Effie Mona Mack (1888-1969), Nevada historian and educator, and University benefactor. Dedicated in 1967, it houses a number of academic departments, including the Department of Psychology, Psychological Services, and the Interdisciplinary Social Psychology Ph.D. Program. Of special note is the University of Nevada Oral History program, which is located on the first floor of the building. With more than 120,000 pages of recorded and published oral history, the program is a rich storehouse of local and regional history.")
            }
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
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            
            Text("Mathewson-IGT Knowlege Center")
                .fontWeight(.bold)
                .padding(.bottom)
            Button("Reserve a Room") {UIApplication.shared.open(URL(string: "https://www.cisweb3.unr.edu/emswebapp_kc/")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:200, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            HStack{
            Button("KC Hours") {UIApplication.shared.open(URL(string: "https://guides.library.unr.edu/library-info/departments")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
            
            NavigationLink(destination: MapViewKC())
            {
                DirectionsContent()
                
            }
            }
            List{
            Text("Completed in 2008, the Mathewson-IGT Knowledge Center is one of the most technologically advanced libraries in the country. Computing and information technologies and support are combined with the latest in multimedia tools and the resources of the University library in a physical environment designed for comfort, efficiency and collaboration. The $75.3 million, 295,000-square-foot, five-story building represents the University's most ambitious capital project. More than $22 million for the project was raised in private donations, including a combined $10 million gift from the Mathewson Family and International Game Technology.")
            }
        }
    }
    
}

struct SEM: View {
    var body: some View {
        VStack{
            Image("Scrugham")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Scrugham Engineering and Mines").fontWeight(.bold)
            
            HStack{
            NavigationLink(destination: MapViewSEM())
            {
                SchedulesContent()
                
            }
                
            NavigationLink(destination: MapViewSEM())
            {
                DirectionsContent()
                
            }
            }
            
            HStack{
            Button("ECC") {UIApplication.shared.open(URL(string: "https://www.unr.edu/engineering/student-resources/ecc")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/scrugham_engineering_and_mines_805")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
                
            }
            List{
            Text("Opened in 1963, the Scrugham Engineering and Mines Building vastly expanded the University’s laboratories, faculty offices and student classrooms in the College of Engineering. Named in honor of James Scrugham, a dean of the College of Engineering, Governor of Nevada, U.S. House of Representatives member and State Engineer, the building is home to the Departments of Civil Engineering, Computer Science, Environmental Engineering, Electrical Engineering, the Engineering Advisement Center and the Nevada Bureau of Mines and Geology and state geological survey.")
            }
        }
    }

}

struct PSAC: View {
    var body: some View {
        VStack{
            Image("PSAC")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom)
            Text("Pennington Student Achievement Center")
                .fontWeight(.bold)
                //.alignmentGuide(.leading){d in d[.leading]}
            HStack{
            Button("Math Center") {UIApplication.shared.open(URL(string: "https://www.unr.edu/university-math-center")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            Button("Writing Center") {UIApplication.shared.open(URL(string: "https://www.unr.edu/writing-speaking-center")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
                .padding()
                
            }
            HStack{
            Button("Tutoring Center") {UIApplication.shared.open(URL(string: "https://www.unr.edu/tutoring-center")!)}
            .font(.system(size: 15))
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            
            
            NavigationLink(destination: MapViewPSAC())
            {
                DirectionsContent()
                
            }
            }
            List{
            Text("The William N. Pennington Student Achievement Center brings together vital student centers formerly scattered throughout the campus under one roof.  This new facility encourages interaction among students, staff, and faculty of all backgrounds by providing gathering spaces and student resource centers that are open and accessible to every member of the campus community. The Pennington Student Achievement Center (PSAC) was constructed on the site where the Getchell Building occupied, until it was demolished in Winter 2014.  This new 78,000 square foot facility contains the Writing Center, Math Center, Tutoring Center, Nevada Career Studio, Advising Center, Student Veterans Affairs, Disabilities Resource Center, Counseling Services, Trio & McNair Scholars, and Reflection and Mediation Rooms. In addition to these student resource centers, there are an assortment of student collaboration rooms similar to the ones in the Knowledge Center and DeLaMare Library, and several hundred computers spread across various computer labs on different floors. There is also an on-site restaurant on the second floor that provides an assortment of sandwiches and salads, as well as local Hub Coffee.")
            }
        }
    }
    
}

struct WRB: View {
    var body: some View {
        VStack{
            Image("Raggio")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 250)
            .clipped()
            .cornerRadius(100)
                .padding(.bottom,75)
            Text("William J. Raggio").fontWeight(.bold)
            HStack{
            NavigationLink(destination: MapViewWRB())
            {
                SchedulesContent()
                
            }
            
            NavigationLink(destination: MapViewWRB())
            {
                DirectionsContent()
                
            }
            }
            HStack{
            Button("Education") {UIApplication.shared.open(URL(string: "https://www.unr.edu/education")!)}
                .font(.system(size:18))
                .foregroundColor(.white)
                .padding()
                .frame(width:150, height: 40)
                .background(Color.black)
                .cornerRadius(35.0)
                
            Button("Events") {UIApplication.shared.open(URL(string: "https://events.unr.edu/william_j_raggio_building_941")!)}
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
            }
            List{
            Text("This 118,000-square-foot building opened for classes in fall 1997. It houses the College of Education. Formerly known as the College of Education Building, the structure was renamed in 2003 in honor of Nevada State Sen. William J. Raggio, a Reno native, Nevada graduate and longtime K-12 and higher education advocate in the state of Nevada. Specifically, it has the following features: Child and Family Research Center, Dean's Future Scholars Program, Early Learning Center, E.L. Cord Foundation Center for Learning and Literacy, Nell J. Redfield Learning & Resource Center, Raggio Research Center for Science, Technology, Engineering and Mathematics Education")
            }
        }
    }
    
}
struct BInfo_Previews: PreviewProvider {
    static var previews: some View {
        PSAC()
    }
}


struct SchedulesContent: View {
    var body: some View {
        Text("Schedules")
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            //.padding()
    }
}

struct DirectionsContent: View {
    var body: some View {
        Text("Directions")
            .font(.system(size: 18))
            .foregroundColor(.white)
            .padding()
            .frame(width:150, height: 40)
            .background(Color.black)
            .cornerRadius(35.0)
            .padding()
    }
}
