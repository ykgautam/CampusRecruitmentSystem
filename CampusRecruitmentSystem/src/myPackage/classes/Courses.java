/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage.classes;


public class Courses {
    
   private String testtype;
   private int tMarks;
   private String time;

    public Courses(String testtype, int tMarks, String time) {
        this.testtype = testtype;
        this.tMarks = tMarks;
        
        this.time = time;
    }

    public Courses(String cName, int tMarks) {
        this.testtype = testtype;
        this.tMarks = tMarks;
    }

    public Courses() {
    }

    public String getcName() {
        return testtype;
    }

    public void setcName(String cName) {
        this.testtype = testtype;
    }

    public int gettMarks() {
        return tMarks;
    }

    public void settMarks(int tMarks) {
        this.tMarks = tMarks;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    

   
    
}
