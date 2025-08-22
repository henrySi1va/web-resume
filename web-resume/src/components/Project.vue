<script setup>
  defineProps(
    {
      project: {
        type: Object
      }
    }
  );
</script>

<template>
  <div class="pb-10 border-b border-gray-200">
    <h2 class="text-xl font-semibold mb-2">{{ project.title }}</h2>
    <p class="mb-4 text-gray-700">{{ project.description }}</p>

    <ul class="space-y-1 text-sm">
      <li><span class="font-bold">Year:</span> <span>{{ project.year }}</span></li>
      <li><span class="font-bold">Role:</span> <span>{{ project.role }}</span></li>
      <li><span class="font-bold">Industry:</span> <span>{{ project.industry }}</span></li>
      <li><span class="font-bold">Tools:</span> <span>{{ project.tools }}</span></li>
      <li><span class="font-bold">Tech:</span> <span>{{ project.tech }}</span></li>
      <li>
        <span class="font-bold">Links:</span>
        <span>
          <a
            v-for="link in project.links"
            :key="link.url"
            :href="link.url"
            class="text-teal-600 hover:underline mr-3"
            target="_blank"
          >
            {{ link.label }}
          </a>
        </span>
      </li>
    </ul>
  </div>
</template>
