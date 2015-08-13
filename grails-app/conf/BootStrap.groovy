import churchcred.Church
import churchcred.District
import churchcred.Jurisdiction
import churchcred.Member

class BootStrap {

    def init = { servletContext ->
        def member1 = new Member(
                firstName: 'Fred',
                middleName: 'Willis',
                lastName: 'Washington',
                title: 'Bishop',
                cellPhoneNumber: '123-456-7890',
                otherPhoneNumber: '098-765-4321',
                memberEmail: 'fwwashington@msn.com',
                backgroundCheckPerfomed: true,
                username: 'fww',
                memberPassword: '123456'
        )
        if (!member1.save()){
            member1.errors.allErrors.each{error ->
                println "An error as occured while saving member1: ${error}"
            }
        }
        def member2 = new Member(
                firstName: 'Patricia',
                middleName: 'Ann',
                lastName: 'Hayes',
                title: 'Supervisor',
                cellPhoneNumber: '222-456-7890',
                otherPhoneNumber: '222-765-4321',
                memberEmail: 'phayes@gmail.com',
                backgroundCheckPerfomed: true,
                username: 'pah',
                memberPassword: '123456'
        )
        if (!member2.save()){
            member2.errors.allErrors.each{error ->
                println "An error as occured while saving member1: ${error}"
            }
        }

        def member3 = new Member(
                firstName: 'James',
                middleName: 'Earl',
                lastName: 'Alberts',
                suffix: 'II',
                title: 'Pastor',
                cellPhoneNumber: '333-111-1111',
                otherPhoneNumber: '333-222-1111',
                memberEmail: 'albertsii@msn.com',
                backgroundCheckPerfomed: true,
                username: 'jea',
                memberPassword: '123456'
        )
        if(!member3.save()){
            member3.errors.allErrors.each{error->
                println " you got an error on save of member3: ${error}"
            }
        }

        def member4 = new Member(
                firstName: 'Columbus',
                middleName: '',
                lastName: 'Smith',
                suffix: 'Jr.',
                title: 'Elder',
                cellPhoneNumber: '444-111-1111',
                otherPhoneNumber: '444-222-1111',
                memberEmail: 'tower@aol.com',
                backgroundCheckPerfomed: true,
                username: 'cs',
                memberPassword: '123456'
        )
        if(!member4.save()){
            member4.errors.allErrors.each{error ->
                println "you have and issue with the saving of member4: ${error}"
            }
        }

        def member5 = new Member(
                firstName: 'Sidney',
                middleName: 'L',
                lastName: 'Frye',
                suffix: 'Sr.',
                title: 'Superintendent',
                cellPhoneNumber: '555-111-1111',
                otherPhoneNumber: '555-222-1111',
                memberEmail: 'pastorslf@gmail.com',
                backgroundCheckPerfomed: true,
                username: 'slf',
                memberPassword: '123456'
        )
        if(!member5.save()){
            member5.errors.allErrors.each{error ->
                println "something is wrong with member5 saving, look: ${error}"
            }
        }

        def member6 = new Member(
                firstName: 'Mabaline',
                middleName: '',
                lastName: 'Davis',
                suffix: '',
                title: 'District Missionary',
                cellPhoneNumber: '666-111-1111',
                otherPhoneNumber: '666-222-1111',
                memberEmail: '',
                backgroundCheckPerfomed: true,
                username: 'md',
                memberPassword: '123456'
        )
        if(!member6.save()){
            member6.errors.allErrors.each{error ->
                println "member6 is not saving check it out: ${error}"
            }
        }
        def jurisdiction1 = new Jurisdiction(
                jurName: 'Minnesota Ecclesiastical Jurisdiction',
                jurAddress: '4254 15th Ave S Minneapolis, MN 55407',
                website: 'http://www.cogicmn.org',
                bishop: member1,
                supervisor: member2,
                secretary: member3,
                financeSecretary: member4
        )
        if(!jurisdiction1.save()){
            jurisdiction1.errors.allErrors.each{error ->
                println "An error has occured with saving minnesotaJur: ${error}"
            }
        }

        def district1 = new District(
                districtName: 'William B Williams Metropolitan',
                districtAddress: '432 4th Street',
                districtCity: 'Rochester',
                districtState: 'MN',
                districtZip: '55107',
                website: 'http://www.wmbwm.org',
                supt: member5,
                distMissy: member6
        )
        if (!district1.save()){
            district1.errors.allErrors.each{error ->
                println "An Error has occured with saving the wbwDistrict: ${error}"
            }
        }

        def church1 = new Church(
                churchName: 'Higher Ground',
                streetAddress: '327 9th Ave S',
                city: 'St. Cloud',
                state: 'MN',
                zipCode: '56301',
                pastor: '',
                webAddress: 'http://www.headinghigher.com',
                churchEmail: 'church@headinghigher.com',
                phoneNumber: '777-777-7777',
                dateOfLastSuptVisit: null,
                is501c3: false,
                description: '''Higher Ground was founded by Pastor James Alberts II
                                in 2001 in the city of St Cloud, MN. In over a decade
                                many lives have been affected. This information is a
                                test of the data that will later go onto describe the
                                church on display on the website hopefully.'''
        )

        if(!church1.save()){
            church1.errors.allErrors.each{error ->
                println "An error has occured while trying to save church1: ${error}"
            }
        }
    }
    def destroy = {
    }
}
