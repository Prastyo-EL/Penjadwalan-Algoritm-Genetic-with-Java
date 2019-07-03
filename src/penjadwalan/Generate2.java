/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjadwalan;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author ehazard
 */
public class Generate2 {

    private Random random = new Random();
    //private Constrait constrait = new Constrait();

    int[][] Gen(ArrayList<ArrayList> pembelajaran, ArrayList<ArrayList> waktu,
            int jumlahindividu) throws SQLException {
        int[][] tempPopulation = new int[jumlahindividu][pembelajaran.get(0).size()];
        for (int individu = 0; individu < tempPopulation.length; individu++) {
            for (int i = 0; i < tempPopulation[individu].length; i++) {
                if (pembelajaran.get(1).get(i).toString().equals("1")) {
                    int data = random.nextInt(45) + 1;

                    tempPopulation[individu][i] = data;

                } else if (pembelajaran.get(1).get(i).toString().equals("2")) {

                    int data = random.nextInt(28) + 46;

                    tempPopulation[individu][i] = data;

                }

            }
        }
        return tempPopulation;
    }

}
