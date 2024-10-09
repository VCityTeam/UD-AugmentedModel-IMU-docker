# UD-AugmentedModel-IMU-docker

Docker version of [UD-AugmentedModel-IMU](https://github.com/VCityTeam/UD-AugmentedModel-IMU)

Build the docker:

```bash
docker build -t augmented_model .
```

Run the docker:

```bash
docker run -p 0.0.0.0:8000:8000/tcp -t augmented_model
```

Open a web browser on URL:

- Digital: `http://localhost:8000/digital`
- Tangible: `http://localhost:8000/tangible`
