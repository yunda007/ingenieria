<template>
<div>
    <v-container>
        <v-simple-table height="300px">
            <template v-slot:default>
                <thead>
                    <tr>

                        <th class="text-left">options</th>
                        <th class="text-left">Name</th>
                        <th class="text-left">Email</th>
                        <th class="text-left">Created_at</th>
                        <th class="text-left">Updated_at</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="item in listUsers" :key="item.id">
                        <td>
                            <v-btn>
                                <v-icon color="orange" @click="openModal('update', item)">
                                    mdi-pencil
                                </v-icon>
                            </v-btn>

                        </td>
                        <td>{{ item.name }}</td>
                        <td>{{ item.email }}</td>
                        <td>{{ item.created_at }}</td>
                        <td>{{ item.updated_at }}</td>
                    </tr>
                </tbody>
            </template>
        </v-simple-table>
    </v-container>
    <v-btn bottom color="green" dark fab fixed right @click="openModal('insert')">
        <v-icon>mdi-plus</v-icon>
    </v-btn>

    <v-dialog v-model=" dialog" width="800">
        <v-card>
            <v-card-title class="teal darken-4" style="color: #fff">
                {{ title }}
            </v-card-title>

            <v-container>
                <v-row class="mx-2">
                    <v-col cols="12" md="4">
                        <v-text-field label="Name" v-model="user.name">
                        </v-text-field>
                    </v-col>

                    <v-col cols="12" md="4">
                        <v-text-field label="Email" v-model="user.email">
                        </v-text-field>
                    </v-col>
                    
                    <template v-if="actionType == 1">
                        <v-col cols="12" md="4">
                            <v-text-field label="Password" v-model="user.password" :type="false ? 'text' : 'password'">
                            </v-text-field>
                        </v-col>
                    </template>
                    <template v-else-if="actionType == 2">
                        <v-col cols="12" md="4">
                            <v-select
                                item-text="description"
                                item-value="id"
                                :items="listOptions"
                                v-model="checkPassport"
                                label="Desea Cambiar Contraseña"
                            >
                            </v-select>
                        </v-col>
                        <v-col v-if="checkPassport == 1" cols="12" md="4">
                            <v-text-field label="New Password" v-model="user.password" :type="false ? 'text' : 'password'">
                            </v-text-field>
                        </v-col>
                    </template>
                    
                </v-row>
                <v-row>
                    <div style="width:90%; justify-content: center; margin: auto; color: red">
                        <h5 class="text-center">{{ message }}</h5>
                    </div>

                    <div style="width:90%; justify-content: center; margin: auto; color: red" 
                    v-for="(item,id) in errorMessage" :key="id">
                        <h5 class="text-center">{{ item }}</h5>
                    </div>
                </v-row>
                <pre>{{user}}</pre>
            </v-container>

            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn
                    v-if="actionType ==1" 
                    color="#15638A" 
                    text 
                    @click="save()"
                >
                    Guardar
                </v-btn>
                <v-btn
                    v-if="actionType ==2" 
                    color="#15638A"
                    text 
                    @click="update()"
                >
                    Actualizar
                </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</div>
</template>

<script>
import { mapActions, mapState } from 'vuex'
export default {
    data() {
        return {
            actionType: 0,
            title: '',
            dialog: false,
            errorUser: 0,
            errorMessage: [],

            user: {
                id: 0,
                name: '',
                email: '',
                password: ''

            },
            listOptions: [
                {id:1, description:'Si'},
                {id:2, description:'No'},
            ],
            checkPassport: 2
        }
    },

    computed: {
        ...mapState('User', ['listUsers', 'message', 'dataResponse']),

    },

    moununted() {
        this.$store.dispatch('user/getList');
    },

    methods: {
        ...mapActions('user', ['getList','saveUser', 'updateUser']),
        openModal(action, data) {
            switch (action) {
                case 'insert': {
                    this.actionType = 1 
                    this.dialog = true
                    this.title = 'NUEVO USUARIO'
                    this.errorMessage = []
                    this.errorUser = 0
                    this.user.id = 0
                    this.user.name = ''
                    this.user.email = ''
                    this.user.password = ''
                    break
                }

                case 'update': {
                    this.actionType = 2
                    this.dialog = true
                    this.title = 'EDITAR USUARIO'
                    this.user.id = data.id
                    this.user.name = data.name
                    this.user.email = data.email
                    break
                }
            }

        },

        validate() {
            this.errorUser = 0
            this.errorMessage = []
            if(this.actionType == 1) {
                if(!this.user.name){ this.errorMessage.push("Digite Nombre usuario")}
                if(!this.user.email){ this.errorMessage.push("Digite Email usuario")}
                if(!this.user.password){ this.errorMessage.push("Digite Contraseña usuario")}
            } else if(this.actionType == 2){
                if(!this.user.name){ this.errorMessage.push("Digite Nombre usuario")}
                if(!this.user.email){ this.errorMessage.push("Digite Email usuario")}
                if(this.checkPassport == 1){ 
                    if(!this.user.password){ this.errorMessage.push("Digite Contraseña usuario")}
                }
            }
            
            if(!this.errorMessage.l) {this.errorUser = 1}
            return this.errorUser
        },

        save() {
            
            if(this.validate()){
                return
            }

            this.errorMessage = []
            this.$store.dispatch('User/saveUser', this.user)
            .then(() => {
                this.$store.dispatch('User/getList')
                this.dialog = false
            }).catch((e) => {
                this.errorMessage = e.response.data.errors;
            })
        },

        update() {
            if(this.validate()){
                return
            }
            
            this.errorMessage = []
            this.$store.dispatch('User/updateUser', this.user)
            .then(() => {
                this.$store.dispatch('User/getList')
                this.dialog = false
            }).catch((e) => {
                this.errorMessage = e.response.data.errors;
            })
        }
    },
    
    mounted() {
        this.$store.dispatch('User/getList');
    },

}
</script>
