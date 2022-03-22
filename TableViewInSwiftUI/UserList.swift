//
//  UserList.swift
//  TableViewInSwiftUI
//
//  Created by Sadeeq Rahman on 22/03/2022.
//

import SwiftUI

struct UserList: View {
    var user_data: [UserModel]
    var body: some View {
        List(user_data){
            user_data in ListRow(user: user_data)
        }
    }
}


struct ListRow: View {
    var user: UserModel
    var body: some View {
        HStack{
            
            Text(user.name)
            Spacer()
            Image("Rectangle 638")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            
        }
    }
    
}


var users = [
    UserModel(id: 1,name: "Sadeeq Rahman"),
    UserModel(id: 2,name: "Waqas Rahman"),
    UserModel(id: 3,name: "Ubaidullah"),
    UserModel(id: 4,name: "Abbas Sher"),
    UserModel(id: 5,name: "Awais Sher"),
    UserModel(id: 1,name: "Sadeeq Rahman"),
    UserModel(id: 2,name: "Waqas Rahman"),
    UserModel(id: 3,name: "Ubaidullah"),
    UserModel(id: 4,name: "Abbas Sher"),
    UserModel(id: 5,name: "Awais Sher")
]

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList(user_data: users )
    }
}
