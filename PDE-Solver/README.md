## PDE-Solver5vs. Previous Methods

Different from previous methods that learn a single operator directly, inspired by classical spectral methods in numerical analysis, PDE-Solver composes complex mappings into multiple basis operators. Along with the latent space projection, PDE-Solver presents favorable approximation and convergence properties.

<p align="center">
<img src=".\fig\compare.png" height = "200" alt="" align=center />
<br><br>
<b>Figure 1.</b> Comparison in approximating complex mappings.
</p>

## Get Started

1. Install Python 3.8. For convenience, execute the following command.

```bash
pip install -r requirements.txt
```

2. Prepare Data. You can obtain experimental datasets from the following links.


| Dataset       | Task                                    | Geometry        | Link                                                         |
| ------------- | --------------------------------------- | --------------- | ------------------------------------------------------------ |
| Elasticity-P  | Estimate material inner stress          | Point Cloud     | [[Google Cloud]](https://drive.google.com/drive/folders/1YBuaoTdOSr_qzaow-G-iwvbUI7fiUzu8) |
| Elasticity-G  | Estimate material inner stress          | Regular Grid    | [[Google Cloud]](https://drive.google.com/drive/folders/1YBuaoTdOSr_qzaow-G-iwvbUI7fiUzu8) |
| Plasticity    | Estimate material deformation over time | Structured Mesh | [[Google Cloud]](https://drive.google.com/drive/folders/1YBuaoTdOSr_qzaow-G-iwvbUI7fiUzu8) |
| Navier-Stokes | Predict future fluid velocity           | Regular Grid    | [[Google Cloud]](https://drive.google.com/drive/folders/1UnbQh2WWc6knEHbLn-ZaXrKUZhp7pjt-) |
| Darcy         | Estimate fluid pressure through medium  | Regular Grid    | [[Google Cloud]](https://drive.google.com/drive/folders/1UnbQh2WWc6knEHbLn-ZaXrKUZhp7pjt-) |
| AirFoil       | Estimate airﬂow velocity around airfoil | Structured Mesh | [[Google Cloud]](https://drive.google.com/drive/folders/1YBuaoTdOSr_qzaow-G-iwvbUI7fiUzu8) |
| Pipe          | Estimate fluid velocity in a pipe       | Structured Mesh | [[Google Cloud]](https://drive.google.com/drive/folders/1YBuaoTdOSr_qzaow-G-iwvbUI7fiUzu8) |

3. Train and evaluate model. We provide the experiment scripts of all benchmarks under the folder `./scripts/`. You can reproduce the experiment results as the following examples:

```bash
bash scripts/elas_lsm.sh # for Elasticity-P
bash scripts/elsa_interp_lsm.sh # for Elasticity-G
bash scripts/plas_lsm.sh # for Plasticity
bash scripts/ns_lsm.sh # for Navier-Stokes
bash scripts/darcy_lsm.sh # for Darcy
bash scripts/airfoil_lsm.sh # for Airfoil
bash scripts/pipe_lsm.sh # for Pipe
```

 Note: You need to change the argument `--data-path` in the above script files to your dataset path.

4. Develop your own model. Here are the instructions:

   - Add the model file under folder `./models/`.
   - Add the model name into `./model_dict.py`.
   - Add a script file under folder `./scripts/` and change the argument `--model`.

 Note: For clearness and easy comparison, we also include the FNO in this repository.



## Showcases

<p align="center">
<img src=".\fig\showcases.png" height = "200" alt="" align=center />
<br><br>
<b>Figure 2.</b> Showcases. PDE-Solver can capture the shock wave around the airfoil precisely.
</p>


## Contact

If you have any questions or want to use the code, please contact [czcshu@gmail.com](mailto:czcshu@gmail.com).

