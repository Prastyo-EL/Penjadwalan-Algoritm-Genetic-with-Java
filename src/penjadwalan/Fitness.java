/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjadwalan;

import java.text.DecimalFormat;
import java.util.ArrayList;

/**
 *
 * @author ehazard
 */
public class Fitness {
    DecimalFormat objDecimalFormat = new DecimalFormat("#.####");
    public int[] GetFitness(int[][] individu, ArrayList<ArrayList> pembelajaran,ArrayList<ArrayList> waktu){ 
        int[] tempFitness = new int[individu.length];
        int penalti = 0;
        for(int cek=0; cek<tempFitness.length; cek++){
            int bentrok = new function().idpengajar(individu[cek], pembelajaran, waktu);
            penalti = (bentrok);
            //System.out.println("Pinalti     :"+penalti);
            tempFitness[cek] = Integer.parseInt(objDecimalFormat.format(penalti));
        }
        return tempFitness;
    }
}
