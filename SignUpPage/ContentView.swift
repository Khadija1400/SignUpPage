//

import SwiftUI

struct ContentView: View {
    
    enum FocusedField{
        case email
        case password
        case ConfirmPassword
    }
    
    @State private var email = ""
    @State private var Name = ""
    @State private var Bio = ""
    @State private var Educaion = ""
    @State private var Skills = ""

    
    
    
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Creat Account")
                    .font(.system(size: 30 , weight: .bold))
                    .foregroundColor(Color("primaryblue"))
                    .padding(.bottom)
                    .padding(.top , 48)
                Text("creat an account so you can explore all the\n existing  ")
                    .font(.system(size: 14 , weight: .medium))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                    .font(.system(size: 14 , weight: .bold))
                    .padding()
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color("secondaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                TextField("Name", text: $Name)
                    .padding()
                    .background(Color("secondaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                
                TextField("Bio", text: $Bio)
                    .padding()
                    .background(Color("secondaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                TextField("Educaion", text: $Educaion)
                    .padding()
                    .background(Color("secondaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                TextField("Skills", text: $Skills)
                    .padding()
                    .background(Color("secondaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                Spacer()
                
                    Button{
                        //  action
                    }label:{
                        
                        Text("sign up")
                            .font(.system(size: 20 , weight: .semibold))
                            .foregroundColor(.white)
                    }
                
                .padding(.vertical)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color("primaryblue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
               
                Button{
                    //action
                }
            label:{
                
                Text("Aleady have an accont ?")
                    .font(.system(size: 15 , weight: .semibold))
                    .foregroundColor(Color("grayy"))
            }
            .padding(.vertical)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .cornerRadius(12)
        BottomView(googleActive:{},facebookActive:{},appleActive:{})
                Spacer()
            }
            Spacer()

        }

    }
}


#Preview {
    ContentView()
}

struct BottomView: View {
    
    var googleActive:()->Void
    var facebookActive:()->Void
    var appleActive:()->Void

    var body: some View{
        VStack{
            Text("Or continue with")
                .font(.system(size: 13 , weight: .semibold))
                .foregroundColor(Color("primaryblue"))

            HStack{
                Button{
                    googleActive()
                } label: {
                    Image("google-logo")
                }
                .iconButtonStyle
                Button{
                    facebookActive()
                } label: {
                    Image("facebook-logo")
                } 
                .iconButtonStyle

                Button{
                    appleActive()
                } label: {
                    Image("apple-logo")
                }
                .iconButtonStyle

            }

        }
    }
    
}

extension View{
    var iconButtonStyle: some View{
        self
            .padding()
            .background(Color("lightgray"))
            .cornerRadius(8)

    }
}
