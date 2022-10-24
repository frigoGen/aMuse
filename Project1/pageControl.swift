//
//  Page control.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 16/10/22.
//

/*import SwiftUI

struct Page_control: View {
    @State var Currentpage = 0
    var body: some View {
        VStack{
            ZStack{
                if Currentpage == 0{
                    Home()
                }
                else if Currentpage == 1{
                    Home()
                }
                else{
                    Image("mobile")
                }
            }
            pageControl(current: Currentpage)
            HStack{
                    Button(action: {
                    if self.Currentpage != 0{
                        self.Currentpage -= 1
                    }
                    
                }) {
                    Text("Previous").padding(15)
                }   .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                Button(action: {
                    if self.Currentpage < 2{
                        self.Currentpage += 1
                    }
                    
                }) {
                    Text("Next").padding(15)
                }.background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }.padding()
             
                
            }.onTapGesture{
                withAnimation(.spring()) {
                 
                }
                // pageControl(current: Currentpage)
            }
        }
    }

struct Page_control_Previews: PreviewProvider {
    static var previews: some View {
        Page_control()
    }
}
struct pageControl : UIViewRepresentable {
    typealias UIViewType = UIPageControl
    
    var current = 0
func makeUIView(context: UIViewRepresentableContext<pageControl>) -> UIPageControl {
        let page = UIPageControl()
    page.currentPageIndicatorTintColor = .black
    page.numberOfPages = 3
    page.pageIndicatorTintColor = .gray
    return page
    }
    func updateUIView(_ uiView: UIPageControl, context:UIViewRepresentableContext <pageControl>) {
        uiView.currentPage = current 
    }
}
   */
