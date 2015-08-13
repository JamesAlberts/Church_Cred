package churchcred

class Church {
    String streetAddress
    String city
    String state
    String zipCode
    String churchName
    Member pastor
    String webAddress
    String churchEmail
    String phoneNumber
    Date dateOfLastSuptVisit
    boolean is501c3 = false
    static hasMany = [members:Member]
    static belongsTo = [District]
    String description

    static constraints = {
        churchName maxSize: 40
        streetAddress maxSize: 50
        city maxSize: 20
        state maxSize: 2
        pastor nullable: true
        webAddress url: true
        churchEmail email: true
        phoneNumber()
        dateOfLastSuptVisit nullable: true
        is501c3()
        description maxSize: 5000
        members nullable: true
    }

    String getChurchName(){
        return churchName
    }
}
