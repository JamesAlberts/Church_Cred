package churchcred

class Jurisdiction {
    String jurName
    String jurAddress
    String website
    Member bishop
    Member supervisor
    Member secretary
    Member financeSecretary
    static hasMany = [districts:District]


    static constraints = {
        jurName nullable: false, maxSize: 50
        jurAddress nullable: false, maxSize: 100
        website nullable: true, url: true
        bishop nullable: false
        supervisor nullable: false
        secretary nullable: true
        financeSecretary nullable: true
        districts nullable: true
    }
}
