//
//  ContentView.swift
//  AppExpo
//
//  Created by CEDAM 11 on 26/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nombre: String = ""
    @State private var edad: String = ""
    @State private var genero: String = ""
    @State private var numeroDeCuenta: String = ""
    @State private var carrera: String = ""
    @State private var semestre: String = ""
    @State private var situacionLaboral: String = ""
    @State private var meditacion: Bool = false
    @State private var deporte: Bool = false
    @State private var reunionesSociales: Bool = false
    @State private var lectura: Bool = false
    @State private var redesSociales: Bool = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Información Personal")) {
                    TextField("Nombre", text: $nombre)
                        .textInputAutocapitalization(.words)
                    TextField("Edad", text: $edad)
                        .keyboardType(.numberPad)
                    Picker("Género", selection: $genero) {
                        Text("Hombre").tag("Hombre")
                        Text("Mujer").tag("Mujer")
                        Text("Otro").tag("Otro")
                    }
                    TextField("Número de Cuenta", text: $numeroDeCuenta)
                        .keyboardType(.numberPad)
                    TextField("Carrera", text: $carrera)
                        .textInputAutocapitalization(.words)
                    TextField("Semestre", text: $semestre)
                        .keyboardType(.numberPad)
                    TextField("Situación Laboral", text: $situacionLaboral)
                        .textInputAutocapitalization(.words)
                }
                Section(header: Text("Prácticas Diarias")) {
                    Toggle(isOn: $meditacion) {
                        Text("Meditación")
                    }
                    Toggle(isOn: $deporte) {
                        Text("Deporte")
                    }
                    Toggle(isOn: $reunionesSociales) {
                        Text("Reuniones Sociales")
                    }
                    Toggle(isOn: $lectura) {
                        Text("Lectura")
                    }
                    Toggle(isOn: $redesSociales) {
                        Text("Redes Sociales")
                    }
                }
            }
            .navigationTitle("Formulario")
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button("Guardar") {
                        
                    }
                }
            }
        }
    }
}

