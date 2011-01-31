# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110128095702) do

  create_table "administradores", :primary_key => "administradorid", :force => true do |t|
    t.integer "empleadoid",                        :default => 0,                  :null => false
    t.string  "descripcion",                       :default => "",                 :null => false
    t.string  "metodoautenticacion", :limit => 32, :default => "PASSWORD_ARQUERO", :null => false
    t.string  "nombreusuario",       :limit => 32, :default => "",                 :null => false
    t.string  "contrasena",          :limit => 64, :default => ""
    t.integer "servidorldapid"
    t.string  "cncertificado",       :limit => 64, :default => ""
    t.string  "activo",              :limit => 1,  :default => "Y",                :null => false
    t.string  "hash31",              :limit => 1,  :default => "Y"
  end

  create_table "alarmasadministracion", :primary_key => "alarmaadministracionid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmaadministracion",    :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.integer "grupometodosid"
    t.integer "grupometodosid2"
    t.integer "grupometodosid3"
    t.integer "grupometodosid4"
    t.integer "grupometodosid5"
    t.string  "tipousuario",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid"
    t.string  "tipousuario2",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid2"
    t.string  "tipousuario3",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid3"
    t.string  "tipousuario4",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid4"
    t.string  "tipousuario5",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alarmasanalogico", :primary_key => "alarmaanalogicoid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "EMPLEADO",     :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "EMPLEADO",     :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "EMPLEADO",     :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "EMPLEADO",     :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "EMPLEADO",     :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmaanalogico",         :limit => 64, :default => "",             :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",            :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipoambito",                    :limit => 15, :default => "CONCENTRADOR"
    t.integer "concentradorid"
    t.integer "concentradorid2"
    t.integer "concentradorid3"
    t.integer "concentradorid4"
    t.integer "concentradorid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.integer "busid"
    t.integer "busid2"
    t.integer "busid3"
    t.integer "busid4"
    t.integer "busid5"
    t.integer "dispositivoid"
    t.integer "dispositivoid2"
    t.integer "dispositivoid3"
    t.integer "dispositivoid4"
    t.integer "dispositivoid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",            :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",            :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",            :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",            :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",   :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",   :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",     :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",     :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",            :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",            :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",            :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",            :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",            :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",            :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",            :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",         :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",            :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",            :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,              :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",            :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,              :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",            :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,              :null => false
  end

  create_table "alarmascontrolhorarios", :primary_key => "alarmacontrolhorarioid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                   :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmacontrolhorario",     :limit => 64, :default => "",              :null => false
    t.string  "temporal",                       :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipousuario",                    :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid"
    t.string  "tipousuario2",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid2"
    t.string  "tipousuario3",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid3"
    t.string  "tipousuario4",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid4"
    t.string  "tipousuario5",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid5"
    t.string  "usotiemporetraso",               :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiemporetraso",                  :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempoadelanto",              :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempoadelanto",                 :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempoausenciajustificada",   :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempoausenciajustificada",      :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempoausenciainjustificada", :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempoausenciainjustificada",    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempomenorminimo",           :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempomenorminimo",              :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempomayormaximo",           :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempomayormaximo",              :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "usotiempomenoresperadas",        :limit => 10, :default => "IGNORAR",       :null => false
    t.string  "tiempomenoresperadas",           :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "notificacionemail",              :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",                :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",           :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",                :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                   :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                    :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                       :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                     :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                        :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                          :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                      :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                         :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                         :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                        :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                  :default => ""
    t.string  "prioridad",                      :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",                :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",     :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                       :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",       :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                         :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware",  :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                    :default => 0,               :null => false
  end

  create_table "alarmasfichaje", :primary_key => "alarmafichajeid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmafichaje",           :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "motivo",                        :limit => 20, :default => "",              :null => false
    t.integer "motivoid"
    t.string  "tipoambito",                    :limit => 15, :default => "PUERTA"
    t.integer "puertaid"
    t.integer "puertaid2"
    t.integer "puertaid3"
    t.integer "puertaid4"
    t.integer "puertaid5"
    t.integer "itinerarioid"
    t.integer "itinerarioid2"
    t.integer "itinerarioid3"
    t.integer "itinerarioid4"
    t.integer "itinerarioid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.string  "sentido",                       :limit => 10, :default => "AMBOS",         :null => false
    t.integer "tipotecnologiaid"
    t.string  "tipousuario",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid"
    t.string  "tipousuario2",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid2"
    t.string  "tipousuario3",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid3"
    t.string  "tipousuario4",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid4"
    t.string  "tipousuario5",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alarmasidentificacion", :primary_key => "alarmaidentificacionid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmaidentificacion",    :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipoambito",                    :limit => 15, :default => "PUERTA"
    t.integer "puertaid"
    t.integer "puertaid2"
    t.integer "puertaid3"
    t.integer "puertaid4"
    t.integer "puertaid5"
    t.integer "itinerarioid"
    t.integer "itinerarioid2"
    t.integer "itinerarioid3"
    t.integer "itinerarioid4"
    t.integer "itinerarioid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.string  "sentido",                       :limit => 16, :default => "AMBOS",         :null => false
    t.string  "tipousuario",                   :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid"
    t.string  "tipousuario2",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid2"
    t.string  "tipousuario3",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid3"
    t.string  "tipousuario4",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid4"
    t.string  "tipousuario5",                  :limit => 16, :default => "TODOS",         :null => false
    t.integer "usuarioid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alarmaspuerta", :primary_key => "alarmapuertaid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmapuerta",            :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipoambito",                    :limit => 15, :default => "PUERTA"
    t.integer "puertaid"
    t.integer "puertaid2"
    t.integer "puertaid3"
    t.integer "puertaid4"
    t.integer "puertaid5"
    t.integer "itinerarioid"
    t.integer "itinerarioid2"
    t.integer "itinerarioid3"
    t.integer "itinerarioid4"
    t.integer "itinerarioid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alarmasrecinto", :primary_key => "alarmarecintoid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmarecinto",           :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipoambito",                    :limit => 15, :default => "RECINTO"
    t.integer "recintoid"
    t.integer "recintoid2"
    t.integer "recintoid3"
    t.integer "recintoid4"
    t.integer "recintoid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alarmastemporizadas", :primary_key => "alarmatemporizadaid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR",    :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR",    :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR",    :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR",    :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR",    :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmatemporizada",       :limit => 64, :default => "",                 :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",                :null => false
    t.string  "notificacionemail",             :limit => 1,  :default => "N",                :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",                :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",                :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",                :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "tipoperiodicidad",              :limit => 32, :default => "SIN_PERIODICIDAD", :null => false
    t.integer "periodoperiodicidad",                         :default => 0,                  :null => false
    t.string  "horaejecucion",                 :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",                :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",                :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",                :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",                :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",                :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",                :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",                :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",             :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",                :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",                :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,                  :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",                :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,                  :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",                :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,                  :null => false
  end

  create_table "alarmastopologia", :primary_key => "alarmatopologiaid", :force => true do |t|
    t.integer "administradorid"
    t.string  "tiporeceptor",                  :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid"
    t.string  "tiporeceptor2",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid2"
    t.string  "tiporeceptor3",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid3"
    t.string  "tiporeceptor4",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid4"
    t.string  "tiporeceptor5",                 :limit => 32, :default => "ADMINISTRADOR", :null => false
    t.integer "receptorid5"
    t.string  "nombrealarmatopologia",         :limit => 64, :default => "",              :null => false
    t.string  "temporal",                      :limit => 1,  :default => "N",             :null => false
    t.integer "tipoeventoid"
    t.integer "tipoeventoid2"
    t.integer "tipoeventoid3"
    t.integer "tipoeventoid4"
    t.integer "tipoeventoid5"
    t.string  "tipoambito",                    :limit => 15, :default => "CONCENTRADOR"
    t.integer "puertaid"
    t.integer "puertaid2"
    t.integer "puertaid3"
    t.integer "puertaid4"
    t.integer "puertaid5"
    t.integer "itinerarioid"
    t.integer "itinerarioid2"
    t.integer "itinerarioid3"
    t.integer "itinerarioid4"
    t.integer "itinerarioid5"
    t.integer "edificioid"
    t.integer "edificioid2"
    t.integer "edificioid3"
    t.integer "edificioid4"
    t.integer "edificioid5"
    t.integer "concentradorid"
    t.integer "concentradorid2"
    t.integer "concentradorid3"
    t.integer "concentradorid4"
    t.integer "concentradorid5"
    t.string  "notificacionemail",             :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware",          :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",               :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",                  :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechainicio",                   :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "fechafin",                      :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horainicio",                    :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "horafin",                       :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "lunes",                         :limit => 1,  :default => "N",             :null => false
    t.string  "martes",                        :limit => 1,  :default => "N",             :null => false
    t.string  "miercoles",                     :limit => 1,  :default => "N",             :null => false
    t.string  "jueves",                        :limit => 1,  :default => "N",             :null => false
    t.string  "viernes",                       :limit => 1,  :default => "N",             :null => false
    t.string  "sabado",                        :limit => 1,  :default => "N",             :null => false
    t.string  "domingo",                       :limit => 1,  :default => "N",             :null => false
    t.string  "descripcion",                                 :default => ""
    t.string  "prioridad",                     :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",               :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.string  "enviofotonotificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionemail",                      :default => 0,               :null => false
    t.string  "enviofotonotificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionmms",                        :default => 0,               :null => false
    t.string  "enviofotonotificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.integer "fotosnotificacionsoftware",                   :default => 0,               :null => false
  end

  create_table "alertas", :primary_key => "alertaid", :force => true do |t|
    t.string  "tipousuario",          :limit => 16, :default => "ADMINISTRADOR", :null => false
    t.integer "administradorid"
    t.integer "empleadoid"
    t.integer "invitadoid"
    t.integer "eventoid"
    t.integer "tipoeventoid"
    t.string  "claseevento",          :limit => 64, :default => "",              :null => false
    t.integer "filtroalarmaid",                     :default => 0,               :null => false
    t.string  "notificacionemail",    :limit => 1,  :default => "N",             :null => false
    t.binary  "memoemail"
    t.string  "notificacionsms",      :limit => 1,  :default => "N",             :null => false
    t.binary  "memosms"
    t.string  "notificacionsoftware", :limit => 1,  :default => "N",             :null => false
    t.binary  "memosoftware"
    t.string  "ejecucionmetodo",      :limit => 1,  :default => "N",             :null => false
    t.string  "numerometodo",         :limit => 4,  :default => "0000"
    t.binary  "memometodo"
    t.string  "fechanotificacion",    :limit => 10, :default => "0000-01-01",    :null => false
    t.string  "horanotificacion",     :limit => 8,  :default => "00:00:00",      :null => false
    t.string  "estado",               :limit => 16, :default => "PENDIENTE",     :null => false
    t.string  "descripcion",                        :default => ""
    t.string  "prioridad",            :limit => 6,  :default => "BAJA",          :null => false
    t.string  "notificacionmms",      :limit => 1,  :default => "N",             :null => false
    t.binary  "memomms"
    t.integer "numerofotos",                        :default => 0,               :null => false
    t.integer "numerovideos",                       :default => 0,               :null => false
  end

  create_table "ausenciasduranteturno", :primary_key => "ausenciaduranteturnoid", :force => true do |t|
    t.integer "turnotrabajoid"
    t.string  "tipoausencia",        :limit => 17, :default => "AUSENCIA", :null => false
    t.integer "eventoentradaid"
    t.integer "eventosalidaid"
    t.integer "motivoid"
    t.string  "duracionausencia",    :limit => 8,  :default => "00:00:00", :null => false
    t.string  "descripcionempleado",               :default => ""
  end

  create_table "autoridadescertificacion", :primary_key => "autoridadcertificacionid", :force => true do |t|
    t.string "nombreautoridadcertificacion", :limit => 64, :default => "",  :null => false
    t.string "commonname",                                 :default => "",  :null => false
    t.string "subject",                                    :default => "",  :null => false
    t.string "url",                                        :default => "",  :null => false
    t.string "confiar",                      :limit => 1,  :default => "N", :null => false
    t.string "descripcion",                                :default => ""
  end

  create_table "buses", :primary_key => "busid", :force => true do |t|
    t.integer "tipobusid",                    :default => 0,   :null => false
    t.integer "concentradorid",               :default => 0,   :null => false
    t.string  "nombrebus",      :limit => 64, :default => "",  :null => false
    t.string  "parametros",                   :default => ""
    t.string  "descripcion",                  :default => ""
    t.string  "activo",         :limit => 1,  :default => "Y", :null => false
  end

  create_table "calendariosfestivos", :primary_key => "calendariofestivoid", :force => true do |t|
    t.string "nombrecalendario", :default => "", :null => false
    t.string "descripcion",      :default => ""
  end

  create_table "camaravideodispositivo", :id => false, :force => true do |t|
    t.integer "camaravideoid",              :default => 0,   :null => false
    t.integer "dispositivoid",              :default => 0,   :null => false
    t.string  "directa",       :limit => 1, :default => "Y", :null => false
    t.integer "preset",                     :default => -1,  :null => false
    t.string  "carrusel",      :limit => 1, :default => "Y", :null => false
  end

  create_table "comandoboton", :primary_key => "comandoid", :force => true do |t|
    t.integer "elementoid",                       :default => 0,         :null => false
    t.string  "tipoelemento",       :limit => 32, :default => "",        :null => false
    t.integer "elementoasociadoid",               :default => 0,         :null => false
    t.string  "accion",             :limit => 10, :default => "ACTIVAR"
    t.integer "indiceejecucion",                  :default => 0,         :null => false
    t.string  "tipocomando",        :limit => 32, :default => ""
    t.integer "indicecomando",                    :default => 0
    t.string  "nombrecomando",      :limit => 64, :default => ""
    t.string  "pedirparametros",    :limit => 1,  :default => "N"
    t.string  "parametros",                       :default => ""
  end

  create_table "concentradores", :primary_key => "concentradorid", :force => true do |t|
    t.integer "edificioid",                                 :default => 0,       :null => false
    t.string  "nombreconcentrador",           :limit => 64, :default => "",      :null => false
    t.string  "localizacion",                 :limit => 64, :default => ""
    t.string  "direccionip",                  :limit => 64, :default => "",      :null => false
    t.string  "cncertificado",                :limit => 64, :default => "",      :null => false
    t.string  "puertoconexionsincertificado", :limit => 5,  :default => "00000", :null => false
    t.string  "puertoclientemantenimiento",   :limit => 5,  :default => "00000", :null => false
    t.string  "puertoconexionconcertificado", :limit => 5,  :default => "00000", :null => false
    t.string  "descripcion",                                :default => ""
    t.string  "sincronizado",                 :limit => 1,  :default => "N"
    t.string  "prioridadsincronizacion",      :limit => 5,  :default => "MEDIA"
    t.string  "puertosoap",                   :limit => 5,  :default => "00000", :null => false
  end

  create_table "configuraciones", :primary_key => "configuracionid", :force => true do |t|
    t.integer "administradorid",                :default => 0,           :null => false
    t.integer "permisousuarioid",               :default => 0,           :null => false
    t.string  "host",             :limit => 15, :default => "127.0.0.1", :null => false
    t.string  "tipomodulo",       :limit => 25, :default => "",          :null => false
    t.binary  "configuracion"
  end

  create_table "configuracionpropia", :primary_key => "configuracionpropiaid", :force => true do |t|
    t.integer "codigoaplicacion"
    t.string  "version",          :limit => 32, :default => ""
    t.string  "direccionip",      :limit => 64, :default => ""
    t.integer "administradorid"
    t.integer "empleadoid"
    t.integer "elemento"
    t.integer "subelemento"
    t.string  "propagable",       :limit => 1,  :default => "N", :null => false
    t.string  "temporal",         :limit => 1,  :default => "N", :null => false
    t.string  "datos",                          :default => ""
    t.binary  "blobdatos"
  end

  create_table "departamentos", :primary_key => "departamentoid", :force => true do |t|
    t.string "nombredepartamento",              :default => "",  :null => false
    t.string "descripcion",                     :default => ""
    t.string "metadepartamento",   :limit => 1, :default => "N", :null => false
  end

  create_table "diasfestivos", :primary_key => "diafestivoid", :force => true do |t|
    t.string  "nombrefestivo",               :default => "",           :null => false
    t.integer "calendarioid",                :default => 0,            :null => false
    t.string  "fechafestivo",  :limit => 10, :default => "0000-01-01", :null => false
    t.string  "descripcion",                 :default => ""
  end

  create_table "dispositivomapa", :primary_key => "dispositivomapaid", :force => true do |t|
    t.integer "dispositivoid", :default => 0,   :null => false
    t.integer "mapaid",        :default => 0,   :null => false
    t.integer "posicionx",     :default => 0,   :null => false
    t.integer "posiciony",     :default => 0,   :null => false
    t.integer "simboloid"
    t.integer "escala",        :default => 100, :null => false
    t.integer "angulo",        :default => 0,   :null => false
    t.integer "alfa",          :default => 100, :null => false
  end

  create_table "dispositivoparticionanalogico", :id => false, :force => true do |t|
    t.integer "dispositivoid",        :default => 0, :null => false
    t.integer "particionanalogicoid", :default => 0, :null => false
  end

  create_table "dispositivoplantillaanalogico", :id => false, :force => true do |t|
    t.integer "dispositivoid",        :default => 0, :null => false
    t.integer "plantillaanalogicoid", :default => 0, :null => false
    t.binary  "formula"
    t.integer "versionformula",       :default => 1
  end

  create_table "dispositivopuerta", :id => false, :force => true do |t|
    t.integer "dispositivoid",              :default => 0,   :null => false
    t.integer "puertaid",                   :default => 0,   :null => false
    t.string  "directa",       :limit => 1, :default => "Y", :null => false
    t.integer "preset",                     :default => 0,   :null => false
    t.string  "carrusel",      :limit => 1, :default => "Y", :null => false
  end

  create_table "dispositivorecinto", :id => false, :force => true do |t|
    t.integer "dispositivoid",              :default => 0,   :null => false
    t.integer "recintoid",                  :default => 0,   :null => false
    t.string  "directa",       :limit => 1, :default => "Y", :null => false
    t.integer "preset",                     :default => 0,   :null => false
    t.string  "carrusel",      :limit => 1, :default => "Y", :null => false
  end

  create_table "dispositivos", :primary_key => "dispositivoid", :force => true do |t|
    t.integer "tipodispositivoid",               :default => 0,                :null => false
    t.integer "busid",                           :default => 0,                :null => false
    t.integer "edificioid",                      :default => 0,                :null => false
    t.integer "recintoid",                       :default => 0,                :null => false
    t.integer "puertaid",                        :default => 0,                :null => false
    t.string  "nombredispositivo", :limit => 64, :default => "",               :null => false
    t.string  "parametros",                      :default => ""
    t.string  "sentido",           :limit => 16, :default => "ENTRADA_SALIDA", :null => false
    t.string  "descripcion",                     :default => ""
    t.string  "activo",            :limit => 1,  :default => "Y",              :null => false
    t.string  "ignorar",           :limit => 1,  :default => "N",              :null => false
  end

  create_table "edificios", :primary_key => "edificioid", :force => true do |t|
    t.string "nombreedificio", :limit => 64, :default => "",    :null => false
    t.string "husohorario",    :limit => 3,  :default => "+00", :null => false
    t.string "direccion",                    :default => "",    :null => false
    t.string "activo",         :limit => 1,  :default => "Y",   :null => false
    t.string "descripcion",                  :default => ""
  end

  create_table "elementosidentificadores", :primary_key => "elementoidentificadorid", :force => true do |t|
    t.integer "tipotecnologiaid",                      :default => 0,            :null => false
    t.string  "identificacion",         :limit => 128
    t.string  "numeroserie",            :limit => 10
    t.string  "estado",                 :limit => 15,  :default => "DISPONIBLE", :null => false
    t.binary  "muestrabiometrica"
    t.binary  "valororiginal"
    t.integer "calidadmuestra",                        :default => 0,            :null => false
    t.integer "numeroreintentos",                      :default => 0,            :null => false
    t.string  "pin",                    :limit => 32
    t.integer "elementoasociadoid"
    t.integer "indicemedidabiometrica",                :default => 0
  end

  create_table "elementosinoptico", :primary_key => "elementoid", :force => true do |t|
    t.string  "tipoelemento",       :limit => 32, :default => "",  :null => false
    t.integer "elementoasociadoid"
    t.integer "mapaid",                           :default => 0,   :null => false
    t.integer "modeloelementoid",                 :default => 0,   :null => false
    t.string  "posicionx",                        :default => "0", :null => false
    t.string  "posiciony",                        :default => "0", :null => false
    t.integer "escala",                           :default => 100, :null => false
    t.integer "angulo",                           :default => 0,   :null => false
    t.integer "alfa",                             :default => 100, :null => false
    t.string  "parametros",                       :default => ""
  end

  create_table "empleadodepartamento", :id => false, :force => true do |t|
    t.integer "empleadoid",     :default => 0, :null => false
    t.integer "departamentoid", :default => 0, :null => false
  end

  create_table "empleadogrupoacceso", :id => false, :force => true do |t|
    t.integer "empleadoid",    :default => 0, :null => false
    t.integer "grupoaccesoid", :default => 0, :null => false
  end

  create_table "empleadogrupohorario", :id => false, :force => true do |t|
    t.integer "empleadoid",     :default => 0, :null => false
    t.integer "grupohorarioid", :default => 0, :null => false
  end

  create_table "empleadoperfilacceso", :id => false, :force => true do |t|
    t.integer "empleadoid",     :default => 0, :null => false
    t.integer "perfilaccesoid", :default => 0, :null => false
  end

  create_table "empleadoperfilalarma", :id => false, :force => true do |t|
    t.integer "empleadoid",            :default => 0, :null => false
    t.integer "perfilalarmarecintoid", :default => 0, :null => false
  end

  create_table "empleadoperfiltrabajo", :id => false, :force => true do |t|
    t.integer "empleadoid",                   :default => 0,   :null => false
    t.integer "perfiltrabajoid",              :default => 0,   :null => false
    t.string  "generado",        :limit => 1, :default => "N", :null => false
  end

  create_table "empleados", :primary_key => "empleadoid", :force => true do |t|
    t.string  "nombreempleado",        :limit => 64, :default => "",                             :null => false
    t.string  "apellido1",             :limit => 64, :default => "",                             :null => false
    t.string  "apellido2",             :limit => 64, :default => "",                             :null => false
    t.string  "tipoidentificacion",    :limit => 32, :default => "DNI",                          :null => false
    t.string  "identificacion",        :limit => 32, :default => "",                             :null => false
    t.string  "digitostarjetavirtual", :limit => 8,  :default => "",                             :null => false
    t.binary  "memofoto"
    t.string  "telefonotrabajo",       :limit => 32, :default => ""
    t.string  "telefonodomicilio",     :limit => 32, :default => ""
    t.string  "telefonomovil",         :limit => 32, :default => ""
    t.string  "correoelectronico",     :limit => 64, :default => ""
    t.string  "direccion",             :limit => 64, :default => ""
    t.string  "localidad",             :limit => 64, :default => ""
    t.string  "provincia",             :limit => 64, :default => ""
    t.integer "paisid",                              :default => 1
    t.string  "codigopostal",          :limit => 5,  :default => "00000"
    t.string  "pin",                   :limit => 64, :default => "cRDtpNCeBiql5KOQsKVyrA0sAiA="
    t.string  "metodoautenticacion",   :limit => 32, :default => "PASSWORD_ARQUERO",             :null => false
    t.string  "nombreusuario",         :limit => 32, :default => "",                             :null => false
    t.string  "contrasena",            :limit => 64, :default => "fCIvspJ9goryL1khNOiTJIBjfA0="
    t.integer "servidorldapid"
    t.string  "cncertificado",         :limit => 64, :default => ""
    t.string  "activo",                :limit => 1,  :default => "Y",                            :null => false
    t.string  "fechaalta",             :limit => 10, :default => "0000-01-01",                   :null => false
    t.string  "lotealta",              :limit => 5,  :default => "00000",                        :null => false
    t.string  "numeroregistro",        :limit => 64, :default => "",                             :null => false
    t.string  "categoria",             :limit => 64, :default => "",                             :null => false
    t.binary  "memofirma"
    t.string  "fechanacimiento",       :limit => 10, :default => "2005-01-01",                   :null => false
    t.string  "sexo",                  :limit => 5,  :default => "",                             :null => false
    t.string  "gruposanguineo",        :limit => 2,  :default => "",                             :null => false
    t.string  "rh",                    :limit => 1,  :default => "",                             :null => false
    t.string  "hash31",                :limit => 1,  :default => "Y"
    t.string  "campoconfigurable1",                  :default => "",                             :null => false
    t.string  "campoconfigurable2",                  :default => "",                             :null => false
    t.string  "campoconfigurable3",                  :default => "",                             :null => false
    t.string  "campoconfigurable4",                  :default => "",                             :null => false
    t.string  "campoconfigurable5",                  :default => "",                             :null => false
    t.string  "campoconfigurable6",                  :default => "",                             :null => false
    t.string  "campoconfigurable7",                  :default => "",                             :null => false
    t.string  "campoconfigurable8",                  :default => "",                             :null => false
    t.string  "campoconfigurable9",                  :default => "",                             :null => false
    t.string  "campoconfigurable10",                 :default => "",                             :null => false
  end

  add_index "empleados", ["tipoidentificacion", "identificacion"], :name => "empleados_tipoidentificacion_key", :unique => true

  create_table "erroresmetodo", :primary_key => "errormetodoid", :force => true do |t|
    t.string  "nombreerror", :limit => 64, :default => "",  :null => false
    t.integer "metodoid",                  :default => 0,   :null => false
    t.string  "letra",       :limit => 1,  :default => "A", :null => false
    t.string  "texto1",                    :default => ""
    t.string  "texto2",                    :default => ""
    t.string  "texto3",                    :default => ""
    t.string  "texto4",                    :default => ""
  end

  create_table "eventosadministracion", :primary_key => "eventoadministracionid", :force => true do |t|
    t.integer "tipoeventoid",                       :default => 0,             :null => false
    t.string  "eventoconcentradorid", :limit => 20, :default => "0",           :null => false
    t.integer "permisousuarioid"
    t.string  "host",                 :limit => 64, :default => "",            :null => false
    t.string  "indicemetodo",         :limit => 4,  :default => "0000"
    t.string  "nombremetodo",         :limit => 64
    t.string  "grupometodoid",        :limit => 3,  :default => "000"
    t.string  "tipousuario",          :limit => 16, :default => "DESCONOCIDO", :null => false
    t.integer "usuarioid"
    t.integer "concentradorid"
    t.string  "fecha",                :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "hora",                 :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "husohorario",          :limit => 3,  :default => "+00",         :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                        :default => ""
    t.string  "foto",                 :limit => 1,  :default => "N"
    t.string  "video",                :limit => 1,  :default => "N"
  end

  create_table "eventosanalogico", :primary_key => "eventoanalogicoid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,            :null => false
    t.float   "valoranalogico",                          :default => 0.0
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",          :null => false
    t.integer "concentradorid"
    t.integer "busid"
    t.integer "dispositivoid"
    t.string  "fecha",                     :limit => 10, :default => "0000-01-01", :null => false
    t.string  "hora",                      :limit => 8,  :default => "00:00:00",   :null => false
    t.integer "decimasegundo",                           :default => 0
    t.string  "husohorario",               :limit => 3,  :default => "+00",        :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
    t.integer "administradorreconocidoid"
    t.string  "fechareconocido",           :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horareconocido",            :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "hostreconocido",            :limit => 64, :default => "",           :null => false
    t.binary  "descripcionreconocido"
  end

  create_table "eventoscontrolhorario", :primary_key => "eventocontrolhorarioid", :force => true do |t|
    t.integer "tipoeventoid",                 :default => 0,            :null => false
    t.string  "fechaevento",    :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horaevento",     :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "husohorario",    :limit => 3,  :default => "+00",        :null => false
    t.string  "firmatimestamp",               :default => "",           :null => false
    t.integer "turnotrabajoid"
    t.integer "empleadoid"
  end

  create_table "eventosfichaje", :primary_key => "eventofichajeid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,                  :null => false
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",                :null => false
    t.string  "fechaevento",               :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "horaevento",                :limit => 8,  :default => "00:00:00",         :null => false
    t.integer "motivoid",                                :default => 0,                  :null => false
    t.string  "sentido",                   :limit => 15, :default => "SIN_ESPECIFICAR",  :null => false
    t.integer "puertaid",                                :default => 0,                  :null => false
    t.integer "dispositivoid"
    t.integer "empleadoid"
    t.integer "elementoidentificadorid",                 :default => 0,                  :null => false
    t.string  "husohorario",               :limit => 3,  :default => "+00",              :null => false
    t.string  "firmatimestamp",                          :default => "",                 :null => false
    t.integer "turnotrabajoid",                          :default => 0,                  :null => false
    t.string  "horaeventomodificada",      :limit => 8,  :default => "00:00:00",         :null => false
    t.integer "motivomodificadoid",                      :default => 0,                  :null => false
    t.string  "sentidomodificado",         :limit => 15, :default => "SIN_ESPECIFICAR",  :null => false
    t.string  "tipousuariomodificacion",   :limit => 13, :default => "ADMINISTRADOR",    :null => false
    t.integer "usuariomodificacion",                     :default => 0,                  :null => false
    t.string  "fechamodificacion",         :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "horamodificacion",          :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "descripcionmodificacion",                 :default => ""
    t.string  "validacion",                :limit => 18, :default => "SIN_MODIFICACION", :null => false
    t.integer "administradorvalidacionid"
    t.string  "fechavalidacion",           :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "horavalidacion",            :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "descripcionvalidacion",                   :default => ""
    t.string  "activo",                    :limit => 1,  :default => "Y",                :null => false
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
  end

  create_table "eventosgrabacion", :primary_key => "eventograbacionid", :force => true do |t|
    t.integer "tipoeventoid",                         :default => 0,             :null => false
    t.string  "eventoconcentradorid",   :limit => 20, :default => "0",           :null => false
    t.integer "perfilgrabacionid",                    :default => 0,             :null => false
    t.string  "fechainicio",            :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "horainicio",             :limit => 8,  :default => "00:00:00",    :null => false
    t.integer "duracion",                             :default => 0,             :null => false
    t.integer "dispositivoid",                        :default => 0,             :null => false
    t.integer "tipodispositivoid",                    :default => 0,             :null => false
    t.integer "puertaid",                             :default => 0,             :null => false
    t.integer "recintoid",                            :default => 0,             :null => false
    t.string  "cercana",                :limit => 1,  :default => "N",           :null => false
    t.string  "claseevento",            :limit => 25, :default => ""
    t.integer "tipoeventocausaid"
    t.integer "eventocausaid",                        :default => 0
    t.string  "identificador",                        :default => ""
    t.integer "Offset",                               :default => 0,             :null => false
    t.integer "tiempoantes",                          :default => 0,             :null => false
    t.integer "tiempodespues",                        :default => 0,             :null => false
    t.string  "husohorario",            :limit => 3,  :default => "+00",         :null => false
    t.string  "firmatimestamp"
    t.string  "tipousuario",            :limit => 16, :default => "DESCONOCIDO", :null => false
    t.integer "usuarioid"
    t.integer "dispositivogeneradorid",               :default => 0,             :null => false
  end

  create_table "eventosidentificacion", :primary_key => "eventoidentificacionid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,                :null => false
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",              :null => false
    t.integer "edificioid"
    t.integer "puertaid"
    t.string  "sentido",                   :limit => 16, :default => "SIN_DETERMINAR", :null => false
    t.string  "tipousuario",               :limit => 16, :default => "DESCONOCIDO",    :null => false
    t.integer "usuarioid"
    t.string  "fecha",                     :limit => 10, :default => "0000-01-01",     :null => false
    t.string  "hora",                      :limit => 8,  :default => "00:00:00",       :null => false
    t.string  "husohorario",               :limit => 3,  :default => "+00",            :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
    t.integer "administradorreconocidoid"
    t.string  "fechareconocido",           :limit => 10, :default => "0000-01-01",     :null => false
    t.string  "horareconocido",            :limit => 8,  :default => "00:00:00",       :null => false
    t.string  "hostreconocido",            :limit => 64, :default => "",               :null => false
    t.binary  "descripcionreconocido"
  end

  create_table "eventospuerta", :primary_key => "eventopuertaid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,             :null => false
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",           :null => false
    t.integer "edificioid"
    t.integer "puertaid"
    t.string  "tipousuario",               :limit => 16, :default => "DESCONOCIDO", :null => false
    t.integer "usuarioid"
    t.string  "fecha",                     :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "hora",                      :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "husohorario",               :limit => 3,  :default => "+00",         :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
    t.integer "administradorreconocidoid"
    t.string  "fechareconocido",           :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "horareconocido",            :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "hostreconocido",            :limit => 64, :default => "",            :null => false
    t.binary  "descripcionreconocido"
  end

  create_table "eventosrecinto", :primary_key => "eventorecintoid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,             :null => false
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",           :null => false
    t.integer "edificioid"
    t.integer "recintoid"
    t.integer "dispositivoid"
    t.string  "tipousuario",               :limit => 16, :default => "DESCONOCIDO", :null => false
    t.integer "usuarioid"
    t.string  "fecha",                     :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "hora",                      :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "husohorario",               :limit => 3,  :default => "+00",         :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
    t.integer "administradorreconocidoid"
    t.string  "fechareconocido",           :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "horareconocido",            :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "hostreconocido",            :limit => 64, :default => "",            :null => false
    t.binary  "descripcionreconocido"
  end

  create_table "eventostopologia", :primary_key => "eventotopologiaid", :force => true do |t|
    t.integer "tipoeventoid",                            :default => 0,            :null => false
    t.string  "eventoconcentradorid",      :limit => 20, :default => "0",          :null => false
    t.integer "concentradorid"
    t.integer "busid"
    t.integer "dispositivoid"
    t.string  "fecha",                     :limit => 10, :default => "0000-01-01", :null => false
    t.string  "hora",                      :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "husohorario",               :limit => 3,  :default => "+00",        :null => false
    t.string  "firmatimestamp"
    t.string  "descripcion",                             :default => ""
    t.string  "foto",                      :limit => 1,  :default => "N"
    t.string  "video",                     :limit => 1,  :default => "N"
    t.integer "administradorreconocidoid"
    t.string  "fechareconocido",           :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horareconocido",            :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "hostreconocido",            :limit => 64, :default => "",           :null => false
    t.binary  "descripcionreconocido"
  end

  create_table "expedientes", :primary_key => "expedienteid", :force => true do |t|
    t.string "nombreexpediente",           :limit => 64, :default => "",               :null => false
    t.string "tipoexpediente",             :limit => 20, :default => "CONTROL_ACCESO", :null => false
    t.string "fechainicio",                :limit => 10, :default => "0000-01-01",     :null => false
    t.string "fechafin",                   :limit => 10, :default => "0000-01-01",     :null => false
    t.string "tablaeventosidentificacion", :limit => 40
    t.string "tablaeventospuerta",         :limit => 40
    t.string "tablaeventosadministracion", :limit => 40
    t.string "tablaeventostopologia",      :limit => 40
    t.string "tablaeventosgrabacion",      :limit => 40
    t.string "tablaeventosrecinto",        :limit => 40
    t.string "tablaeventosfichaje",        :limit => 40
    t.string "tablaturnostrabajo",         :limit => 40
    t.string "tablaausenciasturno",        :limit => 40
    t.string "tablafotosevento",           :limit => 40
    t.string "descripcion"
  end

  create_table "fifoeventos", :primary_key => "eventoid", :force => true do |t|
    t.string "tipoevento",       :limit => 32, :default => "SIN_FOTO", :null => false
    t.binary "dato"
    t.string "indicemetodo",     :limit => 6,  :default => "0",        :null => false
    t.string "numeroparametros", :limit => 3,  :default => "0",        :null => false
  end

  create_table "filtroslistadoeventos", :primary_key => "filtrolistadoeventosid", :force => true do |t|
    t.string  "nombrefiltrolistadoeventos", :limit => 64, :default => "", :null => false
    t.integer "administradorid",                          :default => 0,  :null => false
    t.string  "claseevento",                :limit => 64, :default => "", :null => false
    t.binary  "memofiltroeventos"
  end

  create_table "fotosevento", :primary_key => "fotoeventoid", :force => true do |t|
    t.integer "eventoidentificacionid"
    t.integer "eventopuertaid"
    t.integer "eventorecintoid"
    t.integer "eventotopologiaid"
    t.integer "eventoadministracionid"
    t.integer "eventofichajeid"
    t.binary  "memo",                                   :null => false
    t.string  "descripcion",            :default => ""
    t.integer "eventoanalogicoid"
  end

  create_table "framesconfiguracion", :id => false, :force => true do |t|
    t.integer "configuracionid",               :default => 0,   :null => false
    t.string  "tipo",            :limit => 64, :default => "",  :null => false
    t.integer "pantalla",                      :default => 0
    t.integer "estado",                        :default => 2
    t.integer "posicionx",                     :default => 0
    t.integer "posiciony",                     :default => 0
    t.integer "tamanox",                       :default => 100
    t.integer "tamanoy",                       :default => 100
    t.binary  "configuracion"
  end

  create_table "grupoaccesoperfilacceso", :id => false, :force => true do |t|
    t.integer "grupoaccesoid",  :default => 0, :null => false
    t.integer "perfilaccesoid", :default => 0, :null => false
  end

  create_table "grupoaccesoperfilalarma", :id => false, :force => true do |t|
    t.integer "grupoaccesoid",         :default => 0, :null => false
    t.integer "perfilalarmarecintoid", :default => 0, :null => false
  end

  create_table "grupohorarioperfiltrabajo", :id => false, :force => true do |t|
    t.integer "grupohorarioid",               :default => 0,   :null => false
    t.integer "perfiltrabajoid",              :default => 0,   :null => false
    t.string  "generado",        :limit => 1, :default => "N", :null => false
  end

  create_table "gruposacceso", :primary_key => "grupoaccesoid", :force => true do |t|
    t.string "nombregrupoacceso", :limit => 64, :default => "", :null => false
    t.string "descripcion",                     :default => ""
  end

  create_table "gruposhorarios", :primary_key => "grupohorarioid", :force => true do |t|
    t.integer "departamentoid"
    t.string  "nombregrupohorario", :default => "", :null => false
    t.string  "descripcion",        :default => ""
  end

  create_table "gruposmetodos", :id => false, :force => true do |t|
    t.integer "grupometodosid",                   :default => 0,     :null => false
    t.string  "nombregrupometodos", :limit => 64, :default => "",    :null => false
    t.string  "identificador",      :limit => 3,  :default => "000", :null => false
    t.string  "corporacion",        :limit => 1,  :default => "N",   :null => false
    t.string  "departamento",       :limit => 1,  :default => "N",   :null => false
    t.string  "edificio",           :limit => 1,  :default => "N",   :null => false
    t.string  "itinerario",         :limit => 1,  :default => "N",   :null => false
    t.string  "empleado",           :limit => 1,  :default => "N",   :null => false
    t.string  "modificable",        :limit => 1,  :default => "N",   :null => false
    t.string  "descripcion",                      :default => ""
  end

  add_index "gruposmetodos", ["identificador"], :name => "gruposmetodos_identificador_key", :unique => true

  create_table "historialmetodo", :primary_key => "modificacionid", :force => true do |t|
    t.integer "metodoid",                      :default => 0,            :null => false
    t.string  "fecha",           :limit => 10, :default => "0000-01-01", :null => false
    t.string  "hora",            :limit => 8,  :default => "00:00:00",   :null => false
    t.integer "administradorid",               :default => 0,            :null => false
    t.string  "estado",          :limit => 12, :default => "RESERVADO",  :null => false
    t.string  "descripcion",                   :default => ""
  end

  create_table "iconos", :primary_key => "iconoid", :force => true do |t|
    t.string "nombreicono", :limit => 32, :default => "", :null => false
    t.binary "imagenicono"
  end

  create_table "informes", :primary_key => "informeid", :force => true do |t|
    t.integer "plantillainformeid",                :default => 0,             :null => false
    t.string  "nombreinforme",       :limit => 64, :default => "",            :null => false
    t.integer "administradorid",                   :default => 0,             :null => false
    t.string  "compartir",           :limit => 1,  :default => "N",           :null => false
    t.string  "fecha",               :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "hora",                :limit => 10, :default => "00:00:00",    :null => false
    t.string  "tipoambito",          :limit => 32, :default => "CORPORACION", :null => false
    t.string  "relativo",            :limit => 1,  :default => "N",           :null => false
    t.binary  "filtro"
    t.integer "alarmatemporizadaid",               :default => 0,             :null => false
    t.string  "descripcion",                       :default => ""
  end

  create_table "invitadoperfilinvitado", :id => false, :force => true do |t|
    t.integer "invitadoid",                     :default => 0,             :null => false
    t.integer "perfilinvitadoid",               :default => 0,             :null => false
    t.string  "estado",           :limit => 15, :default => "NO_INICIADO", :null => false
  end

  create_table "invitados", :primary_key => "invitadoid", :force => true do |t|
    t.string  "nombreinvitado",        :limit => 64, :default => "",           :null => false
    t.string  "apellido1",             :limit => 64, :default => "",           :null => false
    t.string  "apellido2",             :limit => 64, :default => "",           :null => false
    t.string  "tipoidentificacion",    :limit => 32, :default => "DNI",        :null => false
    t.string  "identificacion",        :limit => 32, :default => "",           :null => false
    t.string  "digitostarjetavirtual", :limit => 8,  :default => "",           :null => false
    t.binary  "memofoto"
    t.string  "telefonotrabajo",       :limit => 32, :default => ""
    t.string  "telefonodomicilio",     :limit => 32, :default => ""
    t.string  "telefonomovil",         :limit => 32, :default => ""
    t.string  "correoelectronico",     :limit => 64, :default => ""
    t.string  "direccion",             :limit => 64, :default => ""
    t.string  "localidad",             :limit => 64, :default => ""
    t.string  "provincia",             :limit => 64, :default => ""
    t.integer "paisid",                              :default => 1
    t.string  "codigopostal",          :limit => 5,  :default => "00000"
    t.string  "personagrata",          :limit => 1,  :default => "Y",          :null => false
    t.string  "activo",                :limit => 1,  :default => "Y",          :null => false
    t.string  "fechaalta",             :limit => 10, :default => "0000-01-01", :null => false
    t.string  "lotealta",              :limit => 5,  :default => "00000",      :null => false
    t.string  "fechanacimiento",       :limit => 10, :default => "2005-01-01", :null => false
    t.string  "sexo",                  :limit => 5,  :default => "",           :null => false
    t.string  "gruposanguineo",        :limit => 2,  :default => "",           :null => false
    t.string  "rh",                    :limit => 1,  :default => "",           :null => false
    t.string  "campoconfigurable1",                  :default => "",           :null => false
    t.string  "campoconfigurable2",                  :default => "",           :null => false
    t.string  "campoconfigurable3",                  :default => "",           :null => false
    t.string  "campoconfigurable4",                  :default => "",           :null => false
    t.string  "campoconfigurable5",                  :default => "",           :null => false
    t.string  "campoconfigurable6",                  :default => "",           :null => false
    t.string  "campoconfigurable7",                  :default => "",           :null => false
    t.string  "campoconfigurable8",                  :default => "",           :null => false
    t.string  "campoconfigurable9",                  :default => "",           :null => false
    t.string  "campoconfigurable10",                 :default => "",           :null => false
  end

  add_index "invitados", ["tipoidentificacion", "identificacion"], :name => "invitados_tipoidentificacion_key", :unique => true

  create_table "itinerarioperfilacceso", :id => false, :force => true do |t|
    t.integer "itinerarioid",   :default => 0, :null => false
    t.integer "perfilaccesoid", :default => 0, :null => false
  end

  create_table "itinerarioperfilinvitado", :id => false, :force => true do |t|
    t.integer "itinerarioid",     :default => 0, :null => false
    t.integer "perfilinvitadoid", :default => 0, :null => false
  end

  create_table "itinerariopuerta", :id => false, :force => true do |t|
    t.integer "itinerarioid", :default => 0, :null => false
    t.integer "puertaid",     :default => 0, :null => false
  end

  create_table "itinerarios", :primary_key => "itinerarioid", :force => true do |t|
    t.integer "edificioid",                     :default => 0,   :null => false
    t.string  "nombreitinerario", :limit => 64, :default => "",  :null => false
    t.string  "permitirfichaje",  :limit => 1,  :default => "N", :null => false
    t.string  "descripcion",                    :default => ""
    t.string  "metaitinerario",   :limit => 1,  :default => "N", :null => false
  end

  create_table "jerarquiamapas", :id => false, :force => true do |t|
    t.integer "mapapadreid", :default => 0, :null => false
    t.integer "mapahijoid",  :default => 0, :null => false
    t.integer "posicionx",   :default => 0, :null => false
    t.integer "posiciony",   :default => 0, :null => false
  end

  create_table "librerias", :primary_key => "libreriaid", :force => true do |t|
    t.string  "nombrelibreria",      :limit => 64, :default => "",  :null => false
    t.string  "nombredll",           :limit => 64, :default => "",  :null => false
    t.integer "indicecarga",                       :default => 0,   :null => false
    t.string  "ficherosadicionales"
    t.string  "indiceficherodll",    :limit => 1,  :default => "0", :null => false
    t.string  "critica",             :limit => 1,  :default => "N", :null => false
    t.string  "descripcion",                       :default => ""
  end

  add_index "librerias", ["indicecarga"], :name => "librerias_indicecarga_key", :unique => true

  create_table "lineasmapa", :primary_key => "lineamapaid", :force => true do |t|
    t.integer "mapaid",     :default => 0, :null => false
    t.integer "posicionax", :default => 0, :null => false
    t.integer "posicionay", :default => 0, :null => false
    t.integer "posicionbx", :default => 0, :null => false
    t.integer "posicionby", :default => 0, :null => false
    t.integer "ancho",      :default => 0, :null => false
    t.integer "colorr",     :default => 0, :null => false
    t.integer "colorg",     :default => 0, :null => false
    t.integer "colorb",     :default => 0, :null => false
    t.integer "alfa",       :default => 0, :null => false
  end

  create_table "mapas", :primary_key => "mapaid", :force => true do |t|
    t.string  "nombremapa",  :limit => 64, :default => "",            :null => false
    t.binary  "fondo"
    t.integer "alto",                      :default => 0,             :null => false
    t.integer "ancho",                     :default => 0,             :null => false
    t.string  "tipoambito",  :limit => 16, :default => "CORPORACION", :null => false
    t.integer "ambitoid",                  :default => 0,             :null => false
    t.string  "descripcion",               :default => "",            :null => false
  end

  create_table "metadepartamentodepartamento", :id => false, :force => true do |t|
    t.integer "metadepartamentoid", :default => 0, :null => false
    t.integer "departamentoid",     :default => 0, :null => false
  end

  create_table "metaitinerarioitinerario", :id => false, :force => true do |t|
    t.integer "metaitinerarioid", :default => 0, :null => false
    t.integer "itinerarioid",     :default => 0, :null => false
  end

  create_table "metodos", :primary_key => "metodoid", :force => true do |t|
    t.string  "nombremetodo",             :limit => 64, :default => "",          :null => false
    t.string  "nombrefuncion",            :limit => 64, :default => "",          :null => false
    t.integer "indice",                                 :default => 0,           :null => false
    t.integer "grupometodosid",                         :default => 0,           :null => false
    t.integer "libreriaid"
    t.integer "metodopadreid"
    t.string  "clase",                    :limit => 10, :default => "METODO",    :null => false
    t.string  "tipo",                     :limit => 9,  :default => "LECTURA",   :null => false
    t.string  "propagable",               :limit => 1,  :default => "N",         :null => false
    t.string  "blobspropagables",         :limit => 1,  :default => "N",         :null => false
    t.integer "numeroparametros",                       :default => 0,           :null => false
    t.integer "numeroparametrosbinarios",               :default => 0,           :null => false
    t.string  "basico",                   :limit => 1,  :default => "N",         :null => false
    t.string  "estado",                   :limit => 12, :default => "RESERVADO", :null => false
    t.binary  "descripcion"
  end

  add_index "metodos", ["indice", "libreriaid", "clase"], :name => "metodos_indice_key", :unique => true

  create_table "modeloestadoicono", :id => false, :force => true do |t|
    t.integer "modeloelementoid", :default => 0,  :null => false
    t.integer "iconoid",          :default => 0,  :null => false
    t.integer "tipoeventoid",     :default => 0,  :null => false
    t.string  "descripcion",      :default => ""
  end

  create_table "modeloselemento", :primary_key => "modeloelementoid", :force => true do |t|
    t.integer "iconoreposoid"
    t.string  "nombremodeloelemento", :limit => 64, :default => "", :null => false
    t.string  "tipoelemento",         :limit => 32, :default => "", :null => false
    t.string  "descripcion",                        :default => ""
  end

  create_table "modificacionespuntuales", :primary_key => "modificacionpuntualid", :force => true do |t|
    t.string  "nombremodificacion",        :limit => 64, :default => "",            :null => false
    t.integer "motivoid"
    t.string  "nocturna",                  :limit => 1,  :default => "N",           :null => false
    t.string  "nuevahorainicio",           :limit => 1,  :default => "N",           :null => false
    t.string  "horainiciomodificada",      :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "nuevahorafin",              :limit => 1,  :default => "N",           :null => false
    t.string  "horafinmodificada",         :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "nuevashorasesperadas",      :limit => 1,  :default => "N",           :null => false
    t.string  "horasesperadasmodificadas", :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "nuevahorainicioeo",         :limit => 1,  :default => "N",           :null => false
    t.string  "horainicioeomodificada",    :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "nuevahorafineo",            :limit => 1,  :default => "N",           :null => false
    t.string  "horafineomodificada",       :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "tipoambito",                :limit => 15, :default => "CORPORACION", :null => false
    t.integer "ambitoid"
    t.integer "administradorid"
    t.string  "fechamodificacion",         :limit => 10, :default => "0000-01-01",  :null => false
    t.string  "horamodificacion",          :limit => 8,  :default => "00:00:00",    :null => false
    t.string  "descripcionmodificacion",                 :default => ""
  end

  create_table "moduloscliente", :primary_key => "moduloclienteid", :force => true do |t|
    t.string "nombremodulocliente", :limit => 64, :default => "", :null => false
    t.string "identificador",       :limit => 5,  :default => "", :null => false
    t.string "descripcion",                       :default => ""
  end

  create_table "motivos", :primary_key => "motivoid", :force => true do |t|
    t.string "codigomotivo",               :limit => 2,  :default => "00",             :null => false
    t.string "motivo",                                   :default => "",               :null => false
    t.string "descripcion",                              :default => ""
    t.string "motivoperiodoausencia",      :limit => 1,  :default => "Y",              :null => false
    t.string "motivofichaje",              :limit => 1,  :default => "Y",              :null => false
    t.string "motivosustitucion",          :limit => 1,  :default => "Y",              :null => false
    t.string "sentidofichaje",             :limit => 15, :default => "ENTRADA_SALIDA", :null => false
    t.string "horasturno",                 :limit => 1,  :default => "Y",              :null => false
    t.string "reducirhorasesperadas",      :limit => 1,  :default => "N",              :null => false
    t.string "validacionautomaticaturnos", :limit => 1,  :default => "N",              :null => false
    t.string "activo",                     :limit => 1,  :default => "Y",              :null => false
    t.string "motivomodificacionpuntual",  :limit => 1,  :default => "N",              :null => false
  end

  create_table "nivelaccesogrupometodos", :id => false, :force => true do |t|
    t.integer "nivelaccesoid",                :default => 0,         :null => false
    t.integer "grupometodosid",               :default => 0,         :null => false
    t.string  "permiso",        :limit => 16, :default => "NINGUNO", :null => false
  end

  create_table "nivelesacceso", :primary_key => "nivelaccesoid", :force => true do |t|
    t.string "nombrenivelacceso",     :limit => 64, :default => "",  :null => false
    t.string "requiereautenticacion", :limit => 1,  :default => "N", :null => false
    t.string "modificable",           :limit => 1,  :default => "N", :null => false
    t.string "descripcion",                         :default => ""
  end

  create_table "paises", :primary_key => "paisid", :force => true do |t|
    t.string "nombrepais",  :limit => 32, :default => "",  :null => false
    t.string "codigoiso",   :limit => 10, :default => "",  :null => false
    t.string "paisdefecto", :limit => 1,  :default => "N", :null => false
  end

  create_table "parametrosgenerales", :primary_key => "parametrogeneralid", :force => true do |t|
    t.string "nombreparametrogeneral", :limit => 64, :default => "",       :null => false
    t.string "grupo",                  :limit => 64, :default => "",       :null => false
    t.string "tipo",                   :limit => 32, :default => "STRING", :null => false
    t.string "rango",                                :default => "",       :null => false
    t.string "valor",                                :default => "",       :null => false
    t.binary "memo"
    t.string "descripcion",                          :default => ""
  end

  create_table "parametrosmetodo", :primary_key => "parametroid", :force => true do |t|
    t.string  "nombreparametro", :limit => 64, :default => "", :null => false
    t.integer "indice",                        :default => 0,  :null => false
    t.integer "metodoid",                      :default => 0,  :null => false
    t.string  "tipo",            :limit => 30, :default => "", :null => false
    t.string  "direccion",       :limit => 7,  :default => "", :null => false
    t.string  "descripcion",                   :default => ""
  end

  create_table "particionesanalogico", :primary_key => "particionanalogicoid", :force => true do |t|
    t.string "nombreparticionanalogico", :limit => 64, :default => "", :null => false
    t.string "unidadesmedida",           :limit => 64, :default => "", :null => false
    t.string "descripcion",                            :default => ""
  end

  create_table "perfilesacceso", :primary_key => "perfilaccesoid", :force => true do |t|
    t.string  "nombreperfilacceso", :limit => 64, :default => "",            :null => false
    t.string  "descripcion",                      :default => ""
    t.string  "activo",             :limit => 1,  :default => "Y",           :null => false
    t.string  "ambitoperfil",       :limit => 12, :default => "CORPORACION", :null => false
    t.integer "elementoid"
  end

  create_table "perfilesalarmarecinto", :primary_key => "perfilalarmarecintoid", :force => true do |t|
    t.string  "nombreperfilalarmarecinto", :limit => 64, :default => "",         :null => false
    t.string  "descripcion",                             :default => ""
    t.string  "tipoambito",                :limit => 12, :default => "EDIFICIO", :null => false
    t.integer "elementoid",                              :default => 0,          :null => false
    t.string  "activo",                    :limit => 1,  :default => "Y",        :null => false
  end

  create_table "perfilesanalogico", :primary_key => "perfilanalogicoid", :force => true do |t|
    t.string  "nombreperfilanalogico", :limit => 64, :default => "",            :null => false
    t.string  "activo",                :limit => 1,  :default => "Y",           :null => false
    t.integer "calendariofestivoid"
    t.string  "ambito",                :limit => 12, :default => "CORPORACION", :null => false
    t.integer "ambitoid",                            :default => 0,             :null => false
    t.string  "descripcion",                         :default => ""
  end

  create_table "perfilesgrabacion", :primary_key => "perfilgrabacionid", :force => true do |t|
    t.string  "nombreperfilgrabacion", :limit => 64, :default => "",         :null => false
    t.string  "ambito",                :limit => 12, :default => "EDIFICIO", :null => false
    t.integer "ambitoid",                            :default => 0,          :null => false
    t.integer "resolucion",                          :default => 1,          :null => false
    t.integer "framerate",                           :default => 5,          :null => false
    t.integer "compresion",                          :default => 50,         :null => false
    t.string  "descripcion",                         :default => ""
    t.string  "activo",                :limit => 1,  :default => "Y",        :null => false
  end

  create_table "perfilesinvitado", :primary_key => "perfilinvitadoid", :force => true do |t|
    t.integer "concentradorid"
    t.string  "nombreperfilinvitado", :limit => 64, :default => "",            :null => false
    t.string  "descripcion",                        :default => ""
    t.string  "estado",               :limit => 16, :default => "NO_INICIADA", :null => false
    t.integer "empleadoid"
  end

  add_index "perfilesinvitado", ["concentradorid", "nombreperfilinvitado"], :name => "perfilesinvitado_concentradorid_key", :unique => true

  create_table "perfilespuerta", :primary_key => "perfilpuertaid", :force => true do |t|
    t.string  "nombreperfilpuerta",  :limit => 64, :default => "",  :null => false
    t.string  "activo",              :limit => 1,  :default => "Y", :null => false
    t.integer "calendariofestivoid"
    t.string  "descripcion",                       :default => ""
  end

  create_table "perfilestrabajo", :primary_key => "perfiltrabajoid", :force => true do |t|
    t.integer "departamentoid"
    t.integer "calendariofestivoid"
    t.string  "nombreperfiltrabajo",              :default => "",  :null => false
    t.string  "descripcion",                      :default => ""
    t.string  "generado",            :limit => 1, :default => "N", :null => false
    t.string  "permiteacceso",       :limit => 1, :default => "N", :null => false
  end

  create_table "perfilgrabaciondispositivo", :id => false, :force => true do |t|
    t.integer "perfilgrabacionid",                  :default => 0,   :null => false
    t.integer "dispositivoid",                      :default => 0,   :null => false
    t.string  "grabarcamarascercanas", :limit => 1, :default => "N", :null => false
    t.string  "activo",                :limit => 1, :default => "Y", :null => false
  end

  create_table "perfilgrabacionpuerta", :id => false, :force => true do |t|
    t.integer "perfilgrabacionid",                  :default => 0,   :null => false
    t.integer "puertaid",                           :default => 0,   :null => false
    t.string  "grabarcamarascercanas", :limit => 1, :default => "N", :null => false
    t.string  "activo",                :limit => 1, :default => "Y", :null => false
  end

  create_table "perfilgrabacionrecinto", :id => false, :force => true do |t|
    t.integer "perfilgrabacionid",                  :default => 0,   :null => false
    t.integer "recintoid",                          :default => 0,   :null => false
    t.string  "grabarcamarascercanas", :limit => 1, :default => "N", :null => false
    t.string  "activo",                :limit => 1, :default => "Y", :null => false
  end

  create_table "perfilgrabaciontipoevento", :id => false, :force => true do |t|
    t.integer "perfilgrabacionid",              :default => 0,   :null => false
    t.integer "tipoeventoid",                   :default => 0,   :null => false
    t.string  "activo",            :limit => 1, :default => "Y", :null => false
  end

  create_table "perfiltrabajoitinerario", :id => false, :force => true do |t|
    t.integer "perfiltrabajoid", :default => 0, :null => false
    t.integer "itinerarioid",    :default => 0, :null => false
  end

  create_table "periodosausencia", :primary_key => "periodoausenciaid", :force => true do |t|
    t.integer "empleadoid"
    t.integer "turnoid",                             :default => 0
    t.string  "fechainicio",           :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "fechafin",              :limit => 10, :default => "0000-01-01",        :null => false
    t.integer "motivoid"
    t.string  "tipousuariocreacion",   :limit => 13, :default => "ADMINISTRADOR",     :null => false
    t.integer "usuariocreacionid"
    t.string  "fechacreacion",         :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horacreacion",          :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "descripcioncreacion",                 :default => ""
    t.integer "administradorid"
    t.string  "validacion",            :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.string  "fechavalidacion",       :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horavalidacion",        :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "descripcionvalidacion",               :default => ""
  end

  create_table "permisosusuario", :primary_key => "permisousuarioid", :force => true do |t|
    t.string  "tipousuario",     :limit => 16, :default => "ADMINISTRADOR", :null => false
    t.integer "administradorid"
    t.integer "empleadoid"
    t.integer "nivelaccesoid"
    t.string  "ambito",          :limit => 32, :default => "EMPLEADO",      :null => false
    t.integer "elementoid"
  end

  create_table "plantillasacceso", :primary_key => "plantillaaccesoid", :force => true do |t|
    t.integer "perfilaccesoid",                      :default => 0,            :null => false
    t.string  "nombreplantillaacceso", :limit => 64, :default => "",           :null => false
    t.string  "permiso",               :limit => 16, :default => "DENEGAR",    :null => false
    t.string  "fechainicio",           :limit => 10, :default => "0000-01-01", :null => false
    t.string  "fechafin",              :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horainicio",            :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "horafin",               :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "lunes",                 :limit => 1,  :default => "N",          :null => false
    t.string  "martes",                :limit => 1,  :default => "N",          :null => false
    t.string  "miercoles",             :limit => 1,  :default => "N",          :null => false
    t.string  "jueves",                :limit => 1,  :default => "N",          :null => false
    t.string  "viernes",               :limit => 1,  :default => "N",          :null => false
    t.string  "sabado",                :limit => 1,  :default => "N",          :null => false
    t.string  "domingo",               :limit => 1,  :default => "N",          :null => false
    t.string  "descripcion",                         :default => ""
  end

  create_table "plantillasalarmarecinto", :primary_key => "plantillaalarmarecintoid", :force => true do |t|
    t.integer "perfilalarmarecintoid",                      :default => 0,            :null => false
    t.string  "nombreplantillaalarmarecinto", :limit => 64, :default => "",           :null => false
    t.integer "administradorid"
    t.string  "fechainicio",                  :limit => 10, :default => "0000-01-01", :null => false
    t.string  "fechafin",                     :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horaactivacion",               :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "horadesactivacion",            :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "lunes",                        :limit => 1,  :default => "N",          :null => false
    t.string  "martes",                       :limit => 1,  :default => "N",          :null => false
    t.string  "miercoles",                    :limit => 1,  :default => "N",          :null => false
    t.string  "jueves",                       :limit => 1,  :default => "N",          :null => false
    t.string  "viernes",                      :limit => 1,  :default => "N",          :null => false
    t.string  "sabado",                       :limit => 1,  :default => "N",          :null => false
    t.string  "domingo",                      :limit => 1,  :default => "N",          :null => false
    t.string  "autenticacion",                :limit => 25, :default => "NADA",       :null => false
    t.integer "tiemporeactivacion",                         :default => 0
    t.string  "rearmesupervision",            :limit => 1,  :default => "N",          :null => false
    t.integer "tiempoinactividad",                          :default => 120
    t.string  "armar",                        :limit => 1,  :default => "Y",          :null => false
    t.string  "descripcion",                                :default => ""
  end

  create_table "plantillasanalogico", :primary_key => "plantillaanalogicoid", :force => true do |t|
    t.string  "nombreplantilla",      :limit => 64, :default => "",                  :null => false
    t.integer "perfilanalogicoid"
    t.string  "fechainicio",          :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "fechafin",             :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horainicio",           :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horafin",              :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "lunes",                :limit => 1,  :default => "N",                 :null => false
    t.string  "martes",               :limit => 1,  :default => "N",                 :null => false
    t.string  "miercoles",            :limit => 1,  :default => "N",                 :null => false
    t.string  "jueves",               :limit => 1,  :default => "N",                 :null => false
    t.string  "viernes",              :limit => 1,  :default => "N",                 :null => false
    t.string  "sabado",               :limit => 1,  :default => "N",                 :null => false
    t.string  "domingo",              :limit => 1,  :default => "N",                 :null => false
    t.string  "festivo",              :limit => 1,  :default => "N",                 :null => false
    t.string  "modo",                 :limit => 32, :default => "AUTOMATICO_MANUAL"
    t.integer "particionanalogicoid"
    t.string  "descripcion",                        :default => ""
  end

  create_table "plantillaselementos", :primary_key => "plantillaelementoid", :force => true do |t|
    t.string  "nombreplantilla",      :limit => 64, :default => "", :null => false
    t.string  "descripcionplantilla",               :default => "", :null => false
    t.integer "longitud",                           :default => 0
    t.binary  "bloque1"
    t.binary  "bloque2"
    t.binary  "bloque3"
    t.binary  "bloque4"
    t.binary  "bloque5"
  end

  create_table "plantillasgrabacion", :primary_key => "plantillagrabacionid", :force => true do |t|
    t.string  "nombreplantillagrabacion", :limit => 64, :default => "",           :null => false
    t.integer "perfilgrabacionid",                      :default => 0,            :null => false
    t.string  "fechainicio",              :limit => 10, :default => "0000-01-01", :null => false
    t.string  "fechafin",                 :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horainicio",               :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "horafin",                  :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "lunes",                    :limit => 1,  :default => "N",          :null => false
    t.string  "martes",                   :limit => 1,  :default => "N",          :null => false
    t.string  "miercoles",                :limit => 1,  :default => "N",          :null => false
    t.string  "jueves",                   :limit => 1,  :default => "N",          :null => false
    t.string  "viernes",                  :limit => 1,  :default => "N",          :null => false
    t.string  "sabado",                   :limit => 1,  :default => "N",          :null => false
    t.string  "domingo",                  :limit => 1,  :default => "N",          :null => false
    t.string  "grabarsiempre",            :limit => 1,  :default => "N",          :null => false
    t.string  "grabarmovimiento",         :limit => 1,  :default => "N",          :null => false
    t.string  "descripcion",                            :default => ""
  end

  create_table "plantillasinforme", :primary_key => "plantillainformeid", :force => true do |t|
    t.string  "codigointerno",    :limit => 8,  :default => "AAA000A", :null => false
    t.string  "codigocliente",    :limit => 7,  :default => "AAAAAAA", :null => false
    t.string  "nombreplantilla",  :limit => 64, :default => "",        :null => false
    t.integer "grupometodoid",                  :default => 0,         :null => false
    t.string  "recolecciondatos", :limit => 1,  :default => "N",       :null => false
    t.string  "automatizable",    :limit => 1,  :default => "N",       :null => false
    t.string  "enviodivisible",   :limit => 1,  :default => "N",       :null => false
    t.binary  "vistaprevia"
    t.binary  "binario"
    t.string  "clasedatos",       :limit => 64, :default => "",        :null => false
    t.binary  "descripcion"
  end

  add_index "plantillasinforme", ["codigointerno"], :name => "plantillasinforme_codigointerno_key", :unique => true

  create_table "plantillasinvitado", :primary_key => "plantillainvitadoid", :force => true do |t|
    t.integer "perfilinvitadoid",                      :default => 0,            :null => false
    t.string  "nombreplantillainvitado", :limit => 64, :default => "",           :null => false
    t.string  "descripcion",                           :default => ""
    t.string  "fechainicio",             :limit => 10, :default => "0000-01-01", :null => false
    t.string  "fechafin",                :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horainicio",              :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "horafin",                 :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "lunes",                   :limit => 1,  :default => "N",          :null => false
    t.string  "martes",                  :limit => 1,  :default => "N",          :null => false
    t.string  "miercoles",               :limit => 1,  :default => "N",          :null => false
    t.string  "jueves",                  :limit => 1,  :default => "N",          :null => false
    t.string  "viernes",                 :limit => 1,  :default => "N",          :null => false
    t.string  "sabado",                  :limit => 1,  :default => "N",          :null => false
    t.string  "domingo",                 :limit => 1,  :default => "N",          :null => false
  end

  create_table "plantillaspuerta", :primary_key => "plantillapuertaid", :force => true do |t|
    t.string  "nombreplantilla", :limit => 64, :default => "",           :null => false
    t.integer "perfilpuertaid"
    t.string  "fechainicio",     :limit => 10, :default => "0000-01-01", :null => false
    t.string  "fechafin",        :limit => 10, :default => "0000-01-01", :null => false
    t.string  "horainicio",      :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "horafin",         :limit => 8,  :default => "00:00:00",   :null => false
    t.string  "lunes",           :limit => 1,  :default => "N",          :null => false
    t.string  "martes",          :limit => 1,  :default => "N",          :null => false
    t.string  "miercoles",       :limit => 1,  :default => "N",          :null => false
    t.string  "jueves",          :limit => 1,  :default => "N",          :null => false
    t.string  "viernes",         :limit => 1,  :default => "N",          :null => false
    t.string  "sabado",          :limit => 1,  :default => "N",          :null => false
    t.string  "domingo",         :limit => 1,  :default => "N",          :null => false
    t.string  "festivo",         :limit => 1,  :default => "N",          :null => false
    t.string  "politicaacceso",  :limit => 32, :default => ""
    t.string  "politicaalarma",  :limit => 32, :default => ""
    t.integer "tiempoalarma",                  :default => 0
    t.string  "descripcion",                   :default => ""
  end

  create_table "plantillastrabajo", :primary_key => "plantillatrabajoid", :force => true do |t|
    t.integer "departamentoid"
    t.integer "perfiltrabajoid"
    t.string  "nombreplantillatrabajo",                       :default => "",                 :null => false
    t.string  "plantillapositiva",              :limit => 1,  :default => "Y",                :null => false
    t.string  "horaentrada",                    :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "horasalida",                     :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "diainicio",                      :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "diafin",                         :limit => 10, :default => "0000-01-01",       :null => false
    t.string  "lunes",                          :limit => 1,  :default => "N",                :null => false
    t.string  "martes",                         :limit => 1,  :default => "N",                :null => false
    t.string  "miercoles",                      :limit => 1,  :default => "N",                :null => false
    t.string  "jueves",                         :limit => 1,  :default => "N",                :null => false
    t.string  "viernes",                        :limit => 1,  :default => "N",                :null => false
    t.string  "sabado",                         :limit => 1,  :default => "N",                :null => false
    t.string  "domingo",                        :limit => 1,  :default => "N",                :null => false
    t.string  "tipoperiodicidad",               :limit => 16, :default => "SIN_PERIODICIDAD", :null => false
    t.integer "periodicidad",                                 :default => 0,                  :null => false
    t.string  "flexibilidadplantilla",          :limit => 8,  :default => "NORMAL",           :null => false
    t.string  "plantillanocturna",              :limit => 1,  :default => "N",                :null => false
    t.string  "horasesperadas",                 :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "tratamientohorasobreesperadas",  :limit => 18, :default => "HORAS_TURNO",      :null => false
    t.string  "margenentrada",                  :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "computomargenentrada",           :limit => 9,  :default => "EXACTO",           :null => false
    t.string  "tratamientopreviohoraentrada",   :limit => 18, :default => "HORAS_TURNO",      :null => false
    t.string  "margensalida",                   :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "computomargensalida",            :limit => 9,  :default => "EXACTO",           :null => false
    t.string  "tratamientoposteriorhorasalida", :limit => 18, :default => "HORAS_TURNO",      :null => false
    t.string  "horasminimas",                   :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "validezhorasbajominimo",         :limit => 18, :default => "VALIDO",           :null => false
    t.string  "tratamientohorasbajominimo",     :limit => 18, :default => "HORAS_TURNO",      :null => false
    t.string  "horasmaximas",                   :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "validezhorassobremaximo",        :limit => 18, :default => "VALIDO",           :null => false
    t.string  "tratamientohorassobremaximo",    :limit => 18, :default => "HORAS_TURNO",      :null => false
    t.string  "estanciaobligatoria",            :limit => 1,  :default => "N",                :null => false
    t.string  "horainicioestanciaobligatoria",  :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "horafinestanciaobligatoria",     :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "descuentohorasextra",            :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "minimohorasextra",               :limit => 8,  :default => "00:00:00",         :null => false
    t.string  "tratamientohorasturnoabierto",   :limit => 18, :default => "HORAS_TURNO",      :null => false
  end

  create_table "procedimientoeventoelemento", :id => false, :force => true do |t|
    t.integer "procedimientoeventoid", :default => 0, :null => false
    t.integer "edificioid"
    t.integer "itinerarioid"
    t.integer "puertaid"
    t.integer "recintoid"
    t.integer "concentradorid"
    t.integer "busid"
    t.integer "dispositivoid"
  end

  create_table "procedimientoeventotipoevento", :id => false, :force => true do |t|
    t.integer "procedimientoeventoid", :default => 0, :null => false
    t.integer "tipoeventoid",          :default => 0, :null => false
  end

  create_table "procedimientosevento", :primary_key => "procedimientoeventoid", :force => true do |t|
    t.string "nombreprocedimiento", :limit => 64, :default => "",            :null => false
    t.string "ambito",              :limit => 32, :default => "CORPORACION", :null => false
    t.string "tipodocumento",       :limit => 32, :default => "TEXTO",       :null => false
    t.binary "documento"
  end

  add_index "procedimientosevento", ["nombreprocedimiento"], :name => "procedimientosevento_nombreprocedimiento_key", :unique => true

  create_table "proyectogrupometodos", :id => false, :force => true do |t|
    t.integer "proyectoid",     :default => 0, :null => false
    t.integer "grupometodosid", :default => 0, :null => false
  end

  create_table "proyectomodulocliente", :id => false, :force => true do |t|
    t.integer "proyectoid",      :default => 0, :null => false
    t.integer "moduloclienteid", :default => 0, :null => false
  end

  create_table "proyectoparametrogeneral", :id => false, :force => true do |t|
    t.integer "proyectoid",         :default => 0, :null => false
    t.integer "parametrogeneralid", :default => 0, :null => false
  end

  create_table "proyectos", :primary_key => "proyectoid", :force => true do |t|
    t.string "nombreproyecto", :limit => 64, :default => "", :null => false
    t.string "descripcion",                  :default => ""
  end

  create_table "proyectotipoconcentrador", :id => false, :force => true do |t|
    t.integer "proyectoid",         :default => 0, :null => false
    t.integer "tipoconcentradorid", :default => 0, :null => false
  end

  create_table "puertamapa", :primary_key => "puertamapaid", :force => true do |t|
    t.integer "puertaid",  :default => 0,   :null => false
    t.integer "mapaid",    :default => 0,   :null => false
    t.integer "posicionx", :default => 0,   :null => false
    t.integer "posiciony", :default => 0,   :null => false
    t.integer "simboloid"
    t.integer "escala",    :default => 100, :null => false
    t.integer "angulo",    :default => 0,   :null => false
    t.integer "alfa",      :default => 100, :null => false
  end

  create_table "puertaperfilpuerta", :id => false, :force => true do |t|
    t.integer "puertaid",       :default => 0, :null => false
    t.integer "perfilpuertaid", :default => 0, :null => false
  end

  create_table "puertas", :primary_key => "puertaid", :force => true do |t|
    t.integer "edificioid",                               :default => 0,                          :null => false
    t.string  "nombrepuerta",               :limit => 64, :default => "",                         :null => false
    t.string  "politicaacceso",             :limit => 32, :default => "CONSULTAR_PERFIL_SIEMPRE", :null => false
    t.string  "politicaalarma",             :limit => 32, :default => "SIN_POLITICA",             :null => false
    t.string  "alarmasonora",               :limit => 1,  :default => "N",                        :null => false
    t.integer "tiempoalarma",                             :default => 0
    t.string  "aperturaautomaticaincendio", :limit => 1,  :default => "N",                        :null => false
    t.string  "retirartarjetainvitado",     :limit => 1,  :default => "N",                        :null => false
    t.string  "descripcion",                              :default => ""
  end

  create_table "recintomapa", :primary_key => "recintomapaid", :force => true do |t|
    t.integer "recintoid", :default => 0,   :null => false
    t.integer "mapaid",    :default => 0,   :null => false
    t.string  "posicionx", :default => "0", :null => false
    t.string  "posiciony", :default => "0", :null => false
    t.integer "alfa",      :default => 100, :null => false
    t.integer "simboloid", :default => 0
  end

  create_table "recintoperfilalarma", :id => false, :force => true do |t|
    t.integer "recintoid",             :default => 0, :null => false
    t.integer "perfilalarmarecintoid", :default => 0, :null => false
  end

  create_table "recintopuerta", :id => false, :force => true do |t|
    t.integer "recintoid",               :default => 0,         :null => false
    t.integer "puertaid",                :default => 0,         :null => false
    t.string  "sentido",   :limit => 16, :default => "ENTRADA", :null => false
  end

  create_table "recintos", :primary_key => "recintoid", :force => true do |t|
    t.integer "edificioid",                       :default => 0,         :null => false
    t.string  "nombrerecinto",      :limit => 64, :default => "",        :null => false
    t.string  "tiporecinto",        :limit => 32, :default => "CERRADO", :null => false
    t.integer "tiempoactivacion",                 :default => 0
    t.integer "tiempoalarma",                     :default => 0
    t.integer "tiempoentrada",                    :default => 5
    t.integer "tiemposalida",                     :default => 10
    t.integer "aforo",                            :default => 0
    t.string  "alarmasonora",       :limit => 1,  :default => "N",       :null => false
    t.string  "prealarmasonora",    :limit => 1,  :default => "N",       :null => false
    t.string  "antipassback",       :limit => 1,  :default => "N",       :null => false
    t.string  "activarerror",       :limit => 1,  :default => "N",       :null => false
    t.string  "descripcion",                      :default => ""
    t.string  "autenticacion",      :limit => 25, :default => "NADA",    :null => false
    t.integer "tiemporeactivacion",               :default => 30
    t.integer "tiempoinactividad",                :default => 120
  end

  create_table "segmentosanalogico", :primary_key => "segmentoanalogicoid", :force => true do |t|
    t.string  "nombresegmentoanalogico", :limit => 64, :default => "",  :null => false
    t.integer "particionanalogicoid",                  :default => 0,   :null => false
    t.integer "tipoeventoid",                          :default => 0,   :null => false
    t.float   "valorumbral",                           :default => 0.0
    t.float   "variacioncambiosegmento",               :default => 0.0
    t.integer "colorr",                                :default => 0,   :null => false
    t.integer "colorg",                                :default => 0,   :null => false
    t.integer "colorb",                                :default => 0,   :null => false
    t.integer "periodocaptura",                        :default => 0,   :null => false
    t.string  "generaeventobd",          :limit => 1,  :default => "Y"
    t.string  "fotoentrada",             :limit => 1,  :default => "N"
    t.string  "fotopermanece",           :limit => 1,  :default => "N"
    t.string  "videoentrada",            :limit => 1,  :default => "N"
    t.string  "videopermanece",          :limit => 1,  :default => "N"
    t.string  "descripcion",                           :default => ""
  end

  create_table "servidoresldap", :primary_key => "servidorldapid", :force => true do |t|
    t.string  "nombreservidorldap", :limit => 64,  :default => "",      :null => false
    t.string  "host",               :limit => 128, :default => "",      :null => false
    t.string  "puerto",             :limit => 5,   :default => "00389", :null => false
    t.string  "csp",                :limit => 128, :default => "",      :null => false
    t.string  "dominio",            :limit => 128, :default => "",      :null => false
    t.string  "mascaradn",          :limit => 128, :default => "",      :null => false
    t.integer "tiempoespera",                      :default => 500,     :null => false
    t.string  "descripcion",                       :default => ""
  end

  create_table "simbolos", :primary_key => "simboloid", :force => true do |t|
    t.string "nombresimbolo", :limit => 64, :default => "",              :null => false
    t.binary "grafico"
    t.string "tiposimbolo",   :limit => 64, :default => "IDENTIFICADOR"
  end

  create_table "sustituciones", :primary_key => "sustitucionid", :force => true do |t|
    t.integer "turnotrabajoid"
    t.integer "empleadotitularid"
    t.integer "empleadosustitutoid"
    t.integer "motivoid"
    t.string  "tipousuariocreacion",          :limit => 13, :default => "ADMINISTRADOR",     :null => false
    t.integer "usuariocreacionid"
    t.string  "fechacreacion",                :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horacreacion",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "descripcioncreacion",                        :default => ""
    t.string  "validacionsustituto",          :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.string  "descripcionsustituto",                       :default => ""
    t.string  "fechavalidacionsustituto",     :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horavalidacionsustituto",      :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "validacionadministrador",      :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.integer "administradorvalidacionid"
    t.string  "fechavalidacionadministrador", :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horavalidacionadministrador",  :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "descripcionadministrador",                   :default => ""
  end

  create_table "telefonoscontacto", :primary_key => "telefonocontactoid", :force => true do |t|
    t.string "titular",         :limit => 64, :default => "",          :null => false
    t.string "nombrecontacto",  :limit => 64, :default => "",          :null => false
    t.string "telefono",        :limit => 32, :default => "000000000", :null => false
    t.string "extension",       :limit => 32, :default => "",          :null => false
    t.string "nombrecontacto2", :limit => 64, :default => "",          :null => false
    t.string "telefono2",       :limit => 32, :default => "000000000", :null => false
    t.string "extension2",      :limit => 32, :default => "",          :null => false
    t.string "descripcion",                   :default => ""
  end

  add_index "telefonoscontacto", ["titular"], :name => "telefonoscontacto_titular_key", :unique => true

  create_table "textosmapa", :primary_key => "textomapaid", :force => true do |t|
    t.integer "mapaid",                  :default => 0,   :null => false
    t.string  "texto",                   :default => "",  :null => false
    t.integer "posicionx",               :default => 0,   :null => false
    t.integer "posiciony",               :default => 0,   :null => false
    t.integer "tamano",                  :default => 0,   :null => false
    t.integer "tipo",                    :default => 0,   :null => false
    t.integer "angulo",                  :default => 0,   :null => false
    t.integer "alfa",                    :default => 100, :null => false
    t.integer "escala",                  :default => 100, :null => false
    t.string  "fuente",    :limit => 64, :default => "",  :null => false
    t.integer "colorr",                  :default => 0,   :null => false
    t.integer "colorg",                  :default => 0,   :null => false
    t.integer "colorb",                  :default => 0,   :null => false
  end

  create_table "tipoconcentradormetodo", :id => false, :force => true do |t|
    t.integer "tipoconcentradorid", :default => 0, :null => false
    t.integer "metodoid",           :default => 0, :null => false
  end

  create_table "tipodispositivotipotecnologia", :id => false, :force => true do |t|
    t.integer "tipodispositivoid", :default => 0, :null => false
    t.integer "tipotecnologiaid",  :default => 0, :null => false
  end

  create_table "tiposbus", :primary_key => "tipobusid", :force => true do |t|
    t.string "nombretipobus",       :limit => 64, :default => "", :null => false
    t.string "ficherodll",          :limit => 64, :default => "", :null => false
    t.string "plantillaparametros",               :default => ""
    t.string "descripcion",                       :default => ""
  end

  create_table "tiposconcentrador", :primary_key => "tipoconcentradorid", :force => true do |t|
    t.string "nombretipoconcentrador", :limit => 64, :default => "", :null => false
    t.string "descripcion",                          :default => ""
  end

  create_table "tiposdispositivo", :primary_key => "tipodispositivoid", :force => true do |t|
    t.integer "tipobusid",                           :default => 0,               :null => false
    t.string  "nombretipodispositivo", :limit => 64, :default => "",              :null => false
    t.string  "identificador",         :limit => 64, :default => "",              :null => false
    t.string  "funcionalidad",         :limit => 32, :default => "IDENTIFICADOR", :null => false
    t.string  "plantillaparametros",                 :default => ""
    t.string  "descripcion",                         :default => ""
    t.string  "classfactory",          :limit => 64, :default => "",              :null => false
    t.binary  "ficherojar"
  end

  create_table "tiposevento", :id => false, :force => true do |t|
    t.integer "tipoeventoid",                      :default => 0,   :null => false
    t.string  "nombretipoevento",    :limit => 64, :default => "",  :null => false
    t.string  "claseevento",         :limit => 64, :default => "",  :null => false
    t.string  "generarevento",       :limit => 1,  :default => "Y", :null => false
    t.string  "descripcion"
    t.integer "niveltipoevento",                   :default => 0
    t.string  "exigereconocimiento", :limit => 1,  :default => "Y", :null => false
  end

  create_table "tipostecnologia", :primary_key => "tipotecnologiaid", :force => true do |t|
    t.string "nombretipotecnologia", :limit => 64, :default => "",  :null => false
    t.string "descripcion",                        :default => ""
    t.string "personal",             :limit => 1,  :default => "N", :null => false
    t.string "medidabiometrica",     :limit => 1,  :default => "N", :null => false
    t.string "tipomedidabiometrica", :limit => 32, :default => ""
  end

  create_table "turnostrabajo", :primary_key => "turnotrabajoid", :force => true do |t|
    t.integer "empleadoid"
    t.integer "titularid"
    t.integer "sustitucionid"
    t.integer "departamentoid"
    t.integer "plantillatrabajoid"
    t.integer "perfiltrabajoid"
    t.string  "activo",                         :limit => 1,  :default => "Y",                 :null => false
    t.string  "turnocalculado",                 :limit => 1,  :default => "N",                 :null => false
    t.string  "validacion",                     :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.integer "administradorvalidacionid"
    t.string  "fechavalidacion",                :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horavalidacion",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "descripcionvalidacion",                        :default => ""
    t.integer "modificacionpuntualid",                        :default => 0
    t.integer "periodoausenciaid",                            :default => 0
    t.string  "turnomodificado",                :limit => 1,  :default => "N",                 :null => false
    t.string  "fechamodificacion",              :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "horamodificacion",               :limit => 8,  :default => "00:00:00",          :null => false
    t.integer "administradormodificacionid",                  :default => 0
    t.string  "descripcionmodificacion",                      :default => ""
    t.string  "eventosmodificados",             :limit => 1,  :default => "N",                 :null => false
    t.string  "flexibilidadturno",              :limit => 8,  :default => "NORMAL",            :null => false
    t.string  "turnonocturno",                  :limit => 1,  :default => "N",                 :null => false
    t.string  "dia",                            :limit => 10, :default => "0000-01-01",        :null => false
    t.string  "diasemana",                      :limit => 16, :default => "LUNES"
    t.string  "horainicioplantilla",            :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horafinplantilla",               :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasesperadas",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "tratamientohorasobreesperadas",  :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "horasminimas",                   :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "validezhorasbajominimo",         :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.string  "tratamientohorasbajominimo",     :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "horasmaximas",                   :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "validezhorassobremaximo",        :limit => 18, :default => "PENDIENTE_VALIDAR", :null => false
    t.string  "tratamientohorassobremaximo",    :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "estanciaobligatoria",            :limit => 1,  :default => "N",                 :null => false
    t.string  "horainicioestanciaobligatoria",  :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horafinestanciaobligatoria",     :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "margenentrada",                  :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "computomargenentrada",           :limit => 9,  :default => "EXACTO",            :null => false
    t.string  "tratamientopreviohoraentrada",   :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "margensalida",                   :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "computomargensalida",            :limit => 9,  :default => "EXACTO",            :null => false
    t.string  "tratamientoposteriorhorasalida", :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "descuentohorasextra",            :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "minimohorasextra",               :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "tratamientohorasturnoabierto",   :limit => 18, :default => "HORAS_TURNO",       :null => false
    t.string  "horaentrada",                    :limit => 8,  :default => "00:00:00",          :null => false
    t.integer "puertaentradaid"
    t.string  "retrasoentrada",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasalida",                     :limit => 8,  :default => "00:00:00",          :null => false
    t.integer "puertasalidaid"
    t.string  "adelantosalida",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "estado",                         :limit => 11, :default => "CORRECTO",          :null => false
    t.string  "horasturno",                     :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasextratotales",              :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasextrareflejadas",           :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasausenciajustificada",       :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasausenciainjustificada",     :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasnocturnas",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasfinsemana",                 :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasnocturnasfinsemana",        :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horascalculadasesperadas",       :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horainiciooriginal",             :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horafinoriginal",                :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horasesperadasoriginal",         :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horainicioeooriginal",           :limit => 8,  :default => "00:00:00",          :null => false
    t.string  "horafineooriginal",              :limit => 8,  :default => "00:00:00",          :null => false
  end

  create_table "usuarioelementoidentificador", :id => false, :force => true do |t|
    t.integer "elementoidentificadorid",               :default => 0,            :null => false
    t.string  "tipousuario",             :limit => 16, :default => "EMPLEADO",   :null => false
    t.integer "empleadoid"
    t.integer "invitadoid"
    t.string  "permitirfichaje",         :limit => 1,  :default => "Y",          :null => false
    t.string  "permitiridentificacion",  :limit => 1,  :default => "Y",          :null => false
    t.string  "fechaalta",               :limit => 10, :default => "2003-01-01", :null => false
    t.string  "fechabaja",               :limit => 10, :default => "2100-01-01", :null => false
  end

end
