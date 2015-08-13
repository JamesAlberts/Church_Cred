package churchcred

class District {
    String districtName
    String districtAddress
    String districtCity
    String districtState
    String districtZip
    String website
    Member supt
    Member distMissy
    Member description
    static hasMany = [churches:Church]
    static belongsTo = [Jurisdiction]

    static constraints = {
        districtName nullable: false, maxSize: 50
        districtAddress nullable: true, maxSize: 40
        districtCity nullable: true, maxSize: 20
        districtState nullable: true, maxSize: 2
        districtZip nullable: true, maxSize: 10
        website url:true
        description nullable: true, maxSize: 5000
        supt nullable: true
        distMissy nullable: true
        churches nullable: true
    }
}
