/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjadwalan;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ehazard
 */
public class function {

    static int[] arraybyg;
    static int[] tempKode;
    static int z;
    static int r;
    static int x;

    public int idpengajar(int[] individu, ArrayList<ArrayList> pembelajaran, ArrayList<ArrayList> waktu) {
        tempKode = new int[individu.length];

        x = 100;
        int JumBentrok = 0, penalti = 0, count = 0;
        for (z = 0; z < tempKode.length; z++) {
            //tempKode[i] = 1;

            count = 1;
            //arraybyg = new int[r];
            //System.out.println("tes     :" + arraybyg.length);
            for (int j = z + 1; j < tempKode.length - 1; j++) {
                String guru_i = pembelajaran.get(2).get(z).toString();
                String guru_j = pembelajaran.get(2).get(j).toString();
                String hari_i = waktu.get(1).get(individu[z] - 1).toString();
                String hari_j = waktu.get(1).get(individu[j] - 1).toString();
                String waktuml_i = waktu.get(2).get(individu[z] - 1).toString();
                String waktuml_j = waktu.get(2).get(individu[j] - 1).toString();
                String waktusl_i = waktu.get(3).get(individu[z] - 1).toString();
                String waktusl_j = waktu.get(3).get(individu[j] - 1).toString();
                String kelas_i = pembelajaran.get(3).get(z).toString();
                String kelas_j = pembelajaran.get(3).get(j).toString();
                //bentrok guru
                if (guru_i.equals(guru_j)) {
                    if (hari_i.equals(hari_j)) {
                        if ((waktuml_i.equals(waktuml_j)) || (waktusl_i.equals(waktusl_j))) {
                            //JumBentrok++;
                            penalti += -100;
                            tempKode[j] = 1;
                            //System.out.println(JumBentrok);
                            //catat nomor gen yang bentrok (idx j)

                            //System.out.println("iguru    :" + (z));
                            r = z;
                            //System.out.println("iguru    :" + (r));
                            //System.out.println("jguru    :" + j);
                        }
                    }
                }
                //bentrok kelas
                if (kelas_i.equals(kelas_j)) {
                    if (hari_i.equals(hari_j)) {
                        if ((waktuml_i.equals(waktuml_j)) || (waktusl_i.equals(waktusl_j))) {
                            //JumBentrok++;
                            penalti += -100;
                            tempKode[j] = 1;
                            //System.out.println(JumBentrok);
                            //catat nomor gen yang bentrok (idx j)

                            //System.out.println("ikelas    :" + (z));
                            r = z;
                            //System.out.println("ikelas    :" + (r));
                            //System.out.println("jkelas    :" + j);
                        }
                    }
                }
                //batas 1 hari mengajar
                if (tempKode[j] != 1) {
                    if (guru_i.equals(guru_j)) {
                        if (hari_i.equals(hari_j)) {
                            count += 1;
                            //arrayTemp[j] += 1;
                            //jika melebihi 3
                            if (count > 3) {
                                tempKode[j] = 1;
                                penalti += -10;

                                //System.out.println("iHari        :" + z);
                                r = z;
                                //System.out.println("ihari    :" + (r));
                                //System.out.println("jHari        :" + j);
                            }
                        }
                    }
                }
            }

        }
        return penalti;
    }

}
