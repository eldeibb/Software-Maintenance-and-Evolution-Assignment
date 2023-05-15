package org.unitime.timetable.reports;

import java.util.Vector;

public class SendReportByEmail {
    private Vector<AbstractReport.Line> content = new Vector<AbstractReport.Line>();
    private String email;
    public SendReportByEmail(){

    }
    public void sendEmail(Vector<AbstractReport.Line> c, String em){
        this.content = c;
        this.email = em;
    }
}
