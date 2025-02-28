FROM python:3.12

WORKDIR /app

# Create reflex user
RUN adduser --disabled-password --home /app reflex

RUN python -m venv /app/.venv
ENV PATH="/app/.venv/bin:$PATH

# Copy the application files
COPY --chown=reflex:reflex . /app

# Set permissions
RUN chown -R reflex:reflex /app

# Switch to reflex user
USER reflex

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Initialize Reflex
RUN reflex init

# Needed until Reflex properly passes SIGTERM on backend.
STOPSIGNAL SIGKILL

# Always apply migrations before starting the backend.
CMD ["sh", "-c", "reflex db migrate && reflex run --env prod --backend-only"]