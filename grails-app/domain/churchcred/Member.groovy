package churchcred

class Member {

    String firstName
    String lastName
    String middleName
    String title
    String suffix
    String cellPhoneNumber
    String otherPhoneNumber
    String memberEmail
    Boolean backgroundCheckPerfomed
    Date sexualHarrasmentCompleted
    String username
    String memberPassword

    // a credentialHolder is a type of Member with addtional information

    static constraints = {
        firstName maxSize:15
        lastName maxSize: 20
        middleName maxSize: 15, nullable: true , blank: true
        suffix nullable: true
        //cellPhoneNumber.replaceAll(/(\d{3})-(\d{3})-(\d{4})/)
        username maxSize: 10
        memberPassword maxSize: 10
        memberEmail email: true, nullable: true, blank: true
        username maxSize: 15
        memberPassword maxSize: 15
        cellPhoneNumber maxSize: 12, nullable: true
        otherPhoneNumber maxSize: 12, nullable: true
        backgroundCheckPerfomed nullable: true
        sexualHarrasmentCompleted nullable: true
        title(inList: ['Bishop', 'Supervisor', 'Superintendent',
                'District Missionary', 'Pastor', 'Elder', 'Missionary', 'Evangelist', 'Deacon', 'Brother', 'Sister'])
        suffix(inList: ['Jr.','Sr.', 'II', 'III', 'IV'])
    }

    String getName(){
        return firstName + ' ' + lastName
    }

    String getFullName() {
        return firstName + ' ' + middleName + ' ' + lastName
    }


}
